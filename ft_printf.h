/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: labdelkh <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/15 14:36:54 by labdelkh          #+#    #+#             */
/*   Updated: 2024/10/15 14:46:36 by labdelkh         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "libft/libft.h"
# include <stdarg.h>
# include <limits.h>

int	ft_printf(const char *format, ...);
int	ft_printnbr(int di);
int	ft_print_ptr(unsigned long long ptr);
int	ft_print_unint(unsigned int n);
int	ft_puthex(unsigned int hex, char s);

#endif
