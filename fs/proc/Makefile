#
# Makefile for the Linux proc filesystem routines.
#

obj-$(CONFIG_PROC_FS) += proc.o

ifeq ($(CONFIG_ARM),y)
# Warnings are produced by the current arm cross compiler (v4.2.1) causing
# build abort. Version 4.3.1 of the compiler does not create this warning.
# So, remove the -Werror until the compiler can be updated for all build
# platforms to v4.3.1
CFLAGS_REMOVE_array.o = -Werror
endif

proc-y			:= nommu.o task_nommu.o
proc-$(CONFIG_MMU)	:= mmu.o task_mmu.o

proc-y       += inode.o root.o base.o generic.o array.o \
		proc_tty.o
proc-y	+= cmdline.o
proc-y	+= cpuinfo.o
proc-y	+= devices.o
proc-y	+= interrupts.o
proc-y	+= loadavg.o
proc-y	+= meminfo.o
proc-y	+= stat.o
proc-y	+= uptime.o
proc-y	+= version.o
proc-y  += app_info.o
proc-$(CONFIG_PROC_SYSCTL)	+= proc_sysctl.o
proc-$(CONFIG_NET)		+= proc_net.o
proc-$(CONFIG_PROC_KCORE)	+= kcore.o
proc-$(CONFIG_PROC_VMCORE)	+= vmcore.o
proc-$(CONFIG_PROC_DEVICETREE)	+= proc_devtree.o
proc-$(CONFIG_PRINTK)	+= kmsg.o
proc-$(CONFIG_PROC_PAGE_MONITOR)	+= page.o
