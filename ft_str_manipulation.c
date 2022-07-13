/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_str_manipulation.c                              :+:    :+:            */
/*                                                     +:+                    */
/*   By: pvissers <pvissers@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2022/07/12 10:08:10 by pvissers      #+#    #+#                 */
/*   Updated: 2022/07/13 17:41:51 by pvissers      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <stdio.h>

void	ft_putchar(int c)
{
	write(1, &c, 1);
}

int	main(void)
{
	int	a;
	int	*ptr;
	int	**ptr2;
	int	***ptr3;
	int	****ptr4;
	int	*****ptr5;
	int	******ptr6;
	int	*******ptr7;

	a = 3;
	ptr = &a;
	ptr2 = &ptr;
	ptr3 = &ptr2;
	ptr4 = &ptr3;
	ptr5 = &ptr4;
	ptr6 = &ptr5;
	ptr7 = &ptr6;
	ft_putnbr(*******ptr7);
	return (0);








}
