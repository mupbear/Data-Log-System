#include <winsock.h>

void os_socket(void)
{
	WSADATA wsaData = {0};
    int iResult = 0;

    iResult = WSAStartup(MAKEWORD(2, 2), &wsaData);
    if (iResult != 0) {
        printf("WSAStartup failed: %d\n", iResult);
     }
}
