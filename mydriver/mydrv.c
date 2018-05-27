#include <init.h>
#include <kernel.h>
#include <misc/printk.h>

static int mydrv_init(struct device *dev)
{
	printk("%s: done!\n", __func__);

	return 0;
}

SYS_INIT(mydrv_init, POST_KERNEL, CONFIG_KERNEL_INIT_PRIORITY_DEFAULT);
