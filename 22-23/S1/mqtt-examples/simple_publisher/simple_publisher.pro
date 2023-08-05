TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

LIBS += -lws2_32

INCLUDEPATH += MQTT-C-master/include \
            MQTT-C-master/examples/templates

SOURCES += \
        MQTT-C-master/src/mqtt.c \
        MQTT-C-master/src/mqtt_pal.c \
        main.c

HEADERS += \
       MQTT-C-master/examples/templates/posix_sockets.h \
       MQTT-C-master/include/mqtt.h \
       MQTT-C-master/include/mqtt_pal.h
       