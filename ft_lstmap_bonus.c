/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eej-jama <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/25 16:48:17 by eej-jama          #+#    #+#             */
/*   Updated: 2022/10/30 00:41:16 by eej-jama         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*head;
	t_list	*i;
	t_list	*new;

	if (!lst)
		return (NULL);
	head = 0 ;
	i = lst;
	while (i)
	{
		new = malloc(sizeof(t_list));
		if (!new)
		{
			ft_lstclear(&head, del);
			return (0);
		}
		new->content = f(i->content);
		new->next = NULL;
		ft_lstadd_back(&head, new);
		i = i -> next;
	}
	return (head);
}
