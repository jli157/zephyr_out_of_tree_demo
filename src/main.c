/*
 * Copyright (c) 2012-2014 Wind River Systems, Inc.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <zephyr.h>
#include <misc/printk.h>
#include <mylib.h>

void main(void)
{
	int a = 10, b = 11;

	printk("my lib add: %d + %d = %d\n", a, b, mylib_add(a, b));
}
