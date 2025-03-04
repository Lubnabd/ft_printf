# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: labdelkh <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/15 11:46:00 by labdelkh          #+#    #+#              #
#    Updated: 2024/10/15 12:21:19 by labdelkh         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIBFT_DIR = libft
LIBFT = $(LIBFT_DIR)/libft.a

SRCS = ft_printf.c ft_printnbr.c ft_print_ptr.c ft_print_unint.c ft_puthex.c
OBJS = ${SRCS:.c=.o}
NAME = libftprintf.a

CC = cc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f

all: ${NAME}

${NAME}: ${OBJS}
	make -C ${LIBFT_DIR}
	mv ${LIBFT} ./${NAME}
	ar rcs ${NAME} ${OBJS}

.c.o:
	${CC} ${CFLAGS} -c $< -o $@

clean:
	${RM} ${OBJS}
	make -C ${LIBFT_DIR} clean

fclean: clean
	${RM} ${NAME}
	make -C ${LIBFT_DIR} fclean

re: fclean all

.PHONY: all clean fclean re
