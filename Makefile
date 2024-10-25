# Makefile for Chat App

# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -g

# Directories
SRC_DIR = src
INC_DIR = include
BUILD_DIR = build

# Source files
CLIENT_SRC = $(SRC_DIR)/client.c
SERVER_SRC = $(SRC_DIR)/server.c
UTILS_SRC = $(SRC_DIR)/utils.c

# Object files
CLIENT_OBJ = $(BUILD_DIR)/client.o
SERVER_OBJ = $(BUILD_DIR)/server.o
UTILS_OBJ = $(BUILD_DIR)/utils.o

# Executables
CLIENT_EXEC = $(BUILD_DIR)/client
SERVER_EXEC = $(BUILD_DIR)/server

# Targets
all: $(CLIENT_EXEC) $(SERVER_EXEC)

$(CLIENT_EXEC): $(CLIENT_OBJ) $(UTILS_OBJ)
	$(CC) $(CFLAGS) -o $@ $^

$(SERVER_EXEC): $(SERVER_OBJ) $(UTILS_OBJ)
	$(CC) $(CFLAGS) -o $@ $^

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -I$(INC_DIR) -c $< -o $@

clean:
	rm -f $(BUILD_DIR)/*.o $(CLIENT_EXEC) $(SERVER_EXEC)

.PHONY: all clean