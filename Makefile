NAME = libftprintf.a

# Directories
SRCS_DIR = ./src
INCLUDES_DIR = ./include

# Source files
SRCS = \
	$(SRCS_DIR)/interface/hex.c \
	$(SRCS_DIR)/interface/nbr.c \
	$(SRCS_DIR)/interface/ptr.c \
	$(SRCS_DIR)/interface/text.c \
	$(SRCS_DIR)/printf.c \
	$(SRCS_DIR)/utils/itoa.c \
	$(SRCS_DIR)/utils/mem.c \
	$(SRCS_DIR)/utils/str.c \
	$(SRCS_DIR)/utils/token.c \

# Object files
OBJS = $(SRCS:.c=.o)

# Compiler and flags
CC = clang
CFLAGS = -Wall -Wextra -Werror
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
