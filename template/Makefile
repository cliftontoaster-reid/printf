NAME = libftprintf.a

# Directories
SRCS_DIR = ./src
INCLUDES_DIR = ./include

# Source files
SRCS =

# Object files
OBJS = $(SRCS:.c=.o)

# Compiler and flags
CC = clang
CFLAGS = -Wall -Wextra -Werror -O3 -ffast-math
INCLUDES = -I$(INCLUDES_DIR)

# Rules
all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	rm -f $(OBJS) $(TEST_OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re test