# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bsilva-c <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/26 15:00:54 by bsilva-c          #+#    #+#              #
#    Updated: 2022/11/26 15:36:21 by bsilva-c         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC=cc
CFLAGS=-Wall -Werror -Wextra
DEPS=ft_printf.h libft/libft.a

SRC=ft_printf_base.c ft_printf.c ft_printf_utils.c ft_utoa.c
OBJ=$(SRC:.c=.o)
NAME=libftprintf.a

all: deps $(NAME)
deps:
	@$(MAKE) -C ./libft
$(NAME): $(OBJ) $(DEPS)
	@cp libft/libft.a $(NAME)
	@ar rs $(NAME) $(OBJ)
clean:
	@$(MAKE) $@ -C ./libft
	@rm -rf $(OBJ)
fclean: clean
	@$(MAKE) $@ -C ./libft
	@rm -rf $(NAME)
re: fclean all
	@$(MAKE) $@ -C ./libft
