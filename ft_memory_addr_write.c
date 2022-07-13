/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_memory_addr_write.c                             :+:    :+:            */
/*                                                     +:+                    */
/*   By: pvissers <pvissers@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2022/07/13 17:48:19 by pvissers      #+#    #+#                 */
/*   Updated: 2022/07/13 18:15:18 by pvissers      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_putchar(char c)
{
	write(1, &c, sizeof(c));
}

int	main(void)
{
	int	a;
	int	*ptr;

	a = 3;
	ptr = &a;
	ft_putchar(&a);
	return (0);
}
