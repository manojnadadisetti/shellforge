CC = gcc
CFLAGS = -Wall -Wextra -Iinclude
LDLIBS = -lreadline

TARGET = shellforge

SRCS = src/main.c src/parser.c src/expand.c src/lexer.c src/token.c src/history.c
OBJS = $(SRCS:.c=.o)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) $(LDLIBS) -o $(TARGET)

src/%.o: src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: clean
