// src/client.h
#ifndef CLIENT_H
#define CLIENT_H

#include <stdio.h>      // For standard input/output functions
#include <stdlib.h>     // For memory allocation and process control
#include <string.h>     // For string manipulation functions
#include <arpa/inet.h>  // For socket functions
#include <unistd.h>     // For close() function

// Function declarations for client-side operations
void connect_to_server(const char *server_ip, int port);
void send_message(const char *message);
void receive_message(char *buffer, size_t buffer_size);

#endif // CLIENT_H