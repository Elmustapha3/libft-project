# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eej-jama <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/30 10:53:41 by eej-jama          #+#    #+#              #
#    Updated: 2022/10/30 10:54:05 by eej-jama         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CFLAGS = -Wall -Wextra -Werror

FT_SRC = \
ft_atoi.c ft_calloc.c  ft_isalpha.c ft_isdigit.c ft_memchr.c  ft_memcpy.c  ft_memset.c  ft_strchr.c  ft_strjoin.c ft_strlcpy.c ft_strncmp.c ft_strrchr.c ft_substr.c  ft_toupper.c\
ft_bzero.c ft_putchar_fd.c ft_strmapi.c ft_striteri.c ft_putstr_fd.c ft_putendl_fd.c ft_itoa.c ft_putnbr_fd.c  ft_isalnum.c ft_isascii.c ft_isprint.c ft_memcmp.c  ft_memmove.c ft_split.c   ft_strdup.c  ft_strlcat.c ft_strlen.c  ft_strnstr.c ft_strtrim.c ft_tolower.c\


FT_BONUS_SRC = \
ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c \
ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstiter_bonus.c ft_lstclear_bonus.c ft_lstmap_bonus.c


OBJ = $(FT_SRC:.c=.o)
BONUS_OBJ = $(FT_BONUS_SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar -rc $(NAME) $(OBJ)

bonus: $(BONUS_OBJ)
	ar -rc $(NAME) $(BONUS_OBJ)


clean:
	rm -f $(OBJ) $(BONUS_OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

