# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bahbibe <bahbibe@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/26 05:53:25 by bahbibe           #+#    #+#              #
#    Updated: 2022/10/31 20:24:46 by bahbibe          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRC = ft_atoi.c\
	ft_bzero.c\
	ft_calloc.c\
	ft_isalnum.c\
	ft_isalpha.c\
	ft_isascii.c\
	ft_isdigit.c\
	ft_isprint.c\
	ft_strjoin.c\
	ft_memchr.c\
	ft_memcmp.c\
	ft_memcpy.c\
	ft_memmove.c\
	ft_memset.c\
	ft_strchr.c\
	ft_strdup.c\
	ft_strlcat.c\
	ft_strlcpy.c\
	ft_strlen.c\
	ft_strncmp.c\
	ft_strnstr.c\
	ft_strrchr.c\
	ft_substr.c\
	ft_tolower.c\
	ft_toupper.c\
	ft_strtrim.c\
	ft_striteri.c\
	ft_strmapi.c\
	ft_itoa.c\
	ft_putchar_fd.c\
	ft_putstr_fd.c\
	ft_putendl_fd.c\
	ft_putnbr_fd.c\
	ft_split.c\

B_SRC = ft_lstnew_bonus.c\
		ft_lstadd_front_bonus.c\
		ft_lstsize_bonus.c\
		ft_lstlast_bonus.c\
		ft_lstadd_back_bonus.c\
		ft_lstdelone_bonus.c\
		ft_lstclear_bonus.c\
		ft_lstiter_bonus.c\
		ft_lstmap_bonus.c\

CC = cc
CFLAGS = -Wall -Wextra -Werror 
OBJ = $(SRC:.c=.o)
B_OBJ = $(B_SRC:.c=.o)
all : $(NAME)
bonus : $(B_OBJ)
	ar -r $(NAME) $(B_OBJ)
$(NAME): $(OBJ)
	ar -r $(NAME) $(OBJ)
fclean : clean
	rm -rf $(NAME)
clean:
	rm -rf $(OBJ) $(B_OBJ)
re:fclean all
	