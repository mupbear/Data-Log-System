#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>
#include "definitions.h"
#include "temp_sensor.h"
#include "posix_sockets.h"
#include "MCP3008.h"
#include <mqtt.h>

//void mqtt_pub(int argc, char** argv, char data[]);
void exit_example(int status, int sockfd, pthread_t *client_daemon);
void* client_refresher(void* client);
void publish_callback(void** unused, struct mqtt_response_publish *published);

char* data;
double doubledata;

double sensor1;
double sensor2;
//double sensor3
//double sensor4
//double sensor5
//double sensor6
//double sensor7
//double sensor8


int main(int argc, const char *argv[])
{
	//os_socket();

    const char* addr;
    const char* port;
    const char* topic;

    /* get address (argv[1] if present) */
    if (argc > 1) {
        addr = argv[1];
    } else {
        addr = ADDRESS;
    }

    /* get port number (argv[2] if present) */
    if (argc > 2) {
        port = argv[2];
    } else {
        port = PORT;
    }

    /* get the topic name to publish */
    if (argc > 3) {
        topic = argv[3];
    } else {
        topic = TOPIC;
    }

    /* open the non-blocking TCP socket (connecting to the broker) */
    int sockfd = open_nb_socket(addr, port);

    if (sockfd == -1) {
        perror("Failed to open socket: ");
        exit_example(EXIT_FAILURE, sockfd, NULL);
    }

    /* setup a client */
    struct mqtt_client client;
    uint8_t sendbuf[2048]; /* sendbuf should be large enough to hold multiple whole mqtt messages */
    uint8_t recvbuf[1024]; /* recvbuf should be large enough any whole mqtt message expected to be received */
    mqtt_init(&client, sockfd, sendbuf, sizeof(sendbuf), recvbuf, sizeof(recvbuf), publish_callback);
    /* Create an anonymous session */
    const char* client_id = NULL;
    /* Ensure we have a clean session */
    uint8_t connect_flags = MQTT_CONNECT_CLEAN_SESSION;
    /* Send connection request to the broker. */
    mqtt_connect(&client, client_id, NULL, NULL, 0, NULL, NULL, connect_flags, 400);

    /* check that we don't have any errors */
    if (client.error != MQTT_OK) {
        fprintf(stderr, "error: %s\n", mqtt_error_str(client.error));
        exit_example(EXIT_FAILURE, sockfd, NULL);
    }

    /* start a thread to refresh the client (handle egress and ingree client traffic) */
    pthread_t client_daemon;
    if(pthread_create(&client_daemon, NULL, client_refresher, &client)) {
        fprintf(stderr, "Failed to start client daemon.\n");
        exit_example(EXIT_FAILURE, sockfd, NULL);

    }

    /* start publishing the time */
    printf("%s is ready to begin publishing the time.\n", argv[0]);
    printf("Press ENTER to publish the current time.\n");
    printf("Press CTRL-D (or any other key) to exit.\n\n");
    while(fgetc(stdin) == '\n') {
        /* get the current time */
        time_t timer;
        time(&timer);
        struct tm* tm_info = localtime(&timer);
        char timebuf[26];
        strftime(timebuf, 26, "%Y-%m-%d %H:%M:%S", tm_info);
        
        sensor1 = temperatureSensor(SENSOR_1_CHANNEL, SENSOR_1_VOLTAGE, SENSOR_1_RESISTANCE);
        sensor2 = temperatureSensor(SENSOR_2_CHANNEL, SENSOR_2_VOLTAGE, SENSOR_2_RESISTANCE);
        
        char snr1[80];
        char snr2[80];
        
        sprintf(snr1, "%.0f", sensor1);
        sprintf(snr2, "%.0f", sensor2);
     
        

        /* print a message */
        char application_message[256];
        snprintf(application_message, sizeof(application_message), "%s;%s;%s;222;333;444;555;66;777", timebuf, snr1, snr2 );
        printf("%s published : \"%s\"", argv[0], application_message);

        /* publish the time */
        mqtt_publish(&client, topic, application_message, strlen(application_message), MQTT_PUBLISH_QOS_0);

        /* check for errors */
        if (client.error != MQTT_OK) {
            fprintf(stderr, "error: %s\n", mqtt_error_str(client.error));
            exit_example(EXIT_FAILURE, sockfd, &client_daemon);
        }
    }

    /* disconnect */
    printf("\n%s disconnecting from %s\n", argv[0], addr);
    sleep(1);

    /* exit */
    exit_example(EXIT_SUCCESS, sockfd, &client_daemon);
}

void exit_example(int status, int sockfd, pthread_t *client_daemon)
{
    if (sockfd != -1) close(sockfd);
    if (client_daemon != NULL) pthread_cancel(*client_daemon);
    exit(status);
}

void* client_refresher(void* client)
{
    while(1)
    {
        mqtt_sync((struct mqtt_client*) client);
        usleep(100000U);
    }
    return NULL;
}

void publish_callback(void** unused, struct mqtt_response_publish *published)
{
    /* not used in this example */
}
