# Compiler settings
CC := gcc
CFLAGS := -Wall -Wextra -pedantic -std=c99

# Directories
SRC_DIR := ./src
OBJ_DIR := ./obj

# Find all .c files in ./src and its subdirectories
SRCS := $(shell find $(SRC_DIR) -name '*.c')

# Generate object file names in ./obj directory
OBJS := $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SRCS))

# Name of the output executable
TARGET := myprogram

# Default target
all: $(TARGET)

# Create object directory
$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

# Link object files to create the executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

# Compile .c files into object files
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -c -o $@ $<

# Clean up compiled files
clean:
	rm -rf $(OBJ_DIR)
	rm -f $(TARGET)

# Phony targets
.PHONY: all clean
