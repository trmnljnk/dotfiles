/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   pointer.c                                          :+:    :+:            */
/*                                                     +:+                    */
/*   By: pvissers <pvissers@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2022/07/13 15:41:37 by pvissers      #+#    #+#                 */
/*   Updated: 2022/07/13 16:37:31 by pvissers      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <stdio.h>

int	main(void)
{
	int	a;
	int	*ptr;     /* ptr is pointer to int */
	int **ptr2;   /* ptr2 is pointer to int */

	a = 3;
	ptr = &a;
	ptr2 = &ptr;
	printf("Memory address of a : %p", &a);
	printf("\n");
	printf("value of a: %d ", a);
	printf("\n");
	printf("Memory address of pointer: %p ", &ptr);
	printf("\n");
	printf("Value of ptr: %p ", ptr);
	printf("\n");
	printf("Value of *ptr: %d ", *ptr);
	printf("\n");
	printf("-------------------\n");
	*ptr = 42;
	printf("value of a: %d ", a);
	return (0);
}
