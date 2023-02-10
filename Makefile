SRCS = ft_printf.c\
	ft_printf_utils1.c\
	ft_printf_utils2.c\

OBJS = ${SRCS:.c=.o}

NAME = libftprintf.a
CFLAGS = -Wall -Werror -Wextra
CC = cc
RM = rm -f

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}: ${OBJS}
	ar rcs ${NAME} ${OBJS}

all: ${NAME}

clean:
	${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: all clean, fclean, re .c.o
