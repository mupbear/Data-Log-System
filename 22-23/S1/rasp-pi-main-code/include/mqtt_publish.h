#include "definitions.h"

void mqtt_pub(int argc, char** argv, char data[]);

void exit_example(int status, int sockfd, pthread_t *client_daemon);

void* client_refresher(void* client);

void publish_callback(void** unused, struct mqtt_response_publish *published);








