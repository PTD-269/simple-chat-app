// src/server.h
#ifndef SERVER_H
#define SERVER_H

#include <stdio.h>      // For standard input/output functions
#include <stdlib.h>     // For memory allocation and process control
#include <string.h>     // For string manipulation functions
#include <arpa/inet.h>  // For socket functions
#include <unistd.h>     // For close() function
#include <sys/socket.h> // For socket functions
#include <netinet/in.h> // For sockaddr_in structure

// Function declarations for server-side operations
void start_server(int port);
void handle_client(int client_socket);
void broadcast_message(const char *message);

#endif // SERVER_H