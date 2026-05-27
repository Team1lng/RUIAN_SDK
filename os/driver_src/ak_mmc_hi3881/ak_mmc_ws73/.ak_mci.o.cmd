cmd_/home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/driver_src/ak_mmc_hi3881/ak_mmc_src/ak_mci.o := arm-anykav500-linux-uclibcgnueabi-gcc -Wp,-MD,/home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/driver_src/ak_mmc_hi3881/ak_mmc_src/.ak_mci.o.d  -nostdinc -isystem /home/hlf/share/arm-anykav500-linux-uclibcgnueabi/bin/../lib/gcc/arm-anykav500-linux-uclibcgnueabi/4.9.4/include -I/home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include -Iarch/arm/include/generated/uapi -Iarch/arm/include/generated  -I/home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include -Iinclude -I/home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi -Iinclude/generated/uapi -include /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/kconfig.h   -I/home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/driver_src/ak_mmc_hi3881/ak_mmc_src -D__KERNEL__ -mlittle-endian   -I/home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/mach-anycloud/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -fno-dwarf2-cfi-asm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -fno-ipa-sra -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm -D__LINUX_ARM_ARCH__=5 -march=armv5te -mtune=arm9tdmi -msoft-float -Uarm -fno-delete-null-pointer-checks -Wno-maybe-uninitialized -O2 --param=allow-store-data-races=0 -DCC_HAVE_ASM_GOTO -Wframe-larger-than=4096 -fno-stack-protector -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -O1 -Wno-unused-variable -Wno-unused-value -Wno-unused-label -Wno-unused-parameter -Wno-unused-function -Wno-unused -Wall -DCONFIG_LITTLE_ENDIAN  -DMODULE  -D"KBUILD_STR(s)=$(pound)s" -D"KBUILD_BASENAME=KBUILD_STR(ak_mci)"  -D"KBUILD_MODNAME=KBUILD_STR(ak_mci)" -c -o /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/driver_src/ak_mmc_hi3881/ak_mmc_src/ak_mci.o /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/driver_src/ak_mmc_hi3881/ak_mmc_src/ak_mci.c

source_/home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/driver_src/ak_mmc_hi3881/ak_mmc_src/ak_mci.o := /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/driver_src/ak_mmc_hi3881/ak_mmc_src/ak_mci.c

deps_/home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/driver_src/ak_mmc_hi3881/ak_mmc_src/ak_mci.o := \
    $(wildcard include/config/mmc/block/bounce.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/pm.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/module.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/modules/tree/lookup.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/livepatch.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/debug/set/module/ronx.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/types.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/types.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/int-ll64.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/bitsperlong.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/asm-generic/bitsperlong.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/posix_types.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/stddef.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/stddef.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/kasan.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/uapi/asm/posix_types.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/asm-generic/posix_types.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/const.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/panic/timeout.h) \
  /home/hlf/share/arm-anykav500-linux-uclibcgnueabi/lib/gcc/arm-anykav500-linux-uclibcgnueabi/4.9.4/include/stdarg.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/linkage.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/stringify.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modversions.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/linkage.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/bitops.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/bits.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/bitops.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/typecheck.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/irqflags.h \
    $(wildcard include/config/cpu/v7m.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/hwcap.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/uapi/asm/hwcap.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/irqflags.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arm/heavy/mb.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/bitops/non-atomic.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/bitops/fls64.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/bitops/sched.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/bitops/hweight.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/bitops/arch_hweight.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/bitops/const_hweight.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/bitops/lock.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/bitops/le.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/uapi/asm/byteorder.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/byteorder/little_endian.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/byteorder/little_endian.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/swab.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/swab.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/swab.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/uapi/asm/swab.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/byteorder/generic.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/printk.h \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
    $(wildcard include/config/lto.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/kern_levels.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/kernel.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/sysinfo.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/dynamic_debug.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/stat.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/uapi/asm/stat.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/stat.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/seqlock.h \
    $(wildcard include/config/debug/lock/alloc.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/preempt.h \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  arch/arm/include/generated/asm/preempt.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/preempt.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/bug.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/arm/lpae.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/cpu/endian/be32.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/glue.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/pgtable-2level-types.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/virt/to/bus.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/sizes.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/pfn.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/getorder.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/bottom_half.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/spinlock_types.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/spinlock_types_up.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/rwlock_types.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/spinlock_up.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/arm/errata/754327.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/hw_breakpoint.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/rwlock.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/spinlock_api_up.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/atomic.h \
    $(wildcard include/config/generic/atomic64.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/atomic.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/prefetch.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/cmpxchg-local.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/cmpxchg.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/atomic64.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/atomic-long.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/div64.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/compiler.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/time64.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/time.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/uidgid.h \
    $(wildcard include/config/multiuser.h) \
    $(wildcard include/config/user/ns.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/highuid.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/kmod.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/gfp.h \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/deferred/struct/page/init.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/cma.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/zone/device.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/page/extension.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/wait.h \
  arch/arm/include/generated/asm/current.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/current.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/wait.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/nodemask.h \
    $(wildcard include/config/movable/node.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/bitmap.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/string.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/string.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/page-flags-layout.h \
  include/generated/bounds.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/notifier.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/errno.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/errno.h \
  arch/arm/include/generated/asm/errno.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/asm-generic/errno.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/asm-generic/errno-base.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/mutex/spin/on/owner.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/osq_lock.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/spin/on/owner.h) \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  arch/arm/include/generated/asm/rwsem.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/rwsem.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/srcu.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/rcupdate.h \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/rcu/stall/common.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/tasks/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/prove/rcu.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/rcu/nocb/cpu/all.h) \
    $(wildcard include/config/no/hz/full/sysidle.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/completion.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/ktime.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/jiffies.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/timex.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/timex.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/param.h \
  arch/arm/include/generated/asm/param.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/asm-generic/param.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/timex.h \
  include/generated/timeconst.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/timekeeping.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/rcutiny.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
    $(wildcard include/config/no/hz/common.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/topology.h \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/sched/smt.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/smp.h \
    $(wildcard include/config/up/late/init.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/percpu.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/percpu.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/percpu-defs.h \
    $(wildcard include/config/page/table/isolation.h) \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/topology.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/sysctl.h \
    $(wildcard include/config/sysctl.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/rbtree.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/sysctl.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/elf.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/elf.h \
    $(wildcard include/config/vdso.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/auxvec.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/uapi/asm/auxvec.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/vdso_datapage.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/user.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/elf.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/elf-em.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/kobject.h \
    $(wildcard include/config/uevent/helper.h) \
    $(wildcard include/config/debug/kobject/release.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/sysfs.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/kernfs.h \
    $(wildcard include/config/kernfs.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/err.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/idr.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/kobject_ns.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/kref.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/jump_label.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/rbtree_latch.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/module.h \
    $(wildcard include/config/arm/unwind.h) \
    $(wildcard include/config/arm/module/plts.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/ioport.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/generic/msi/irq/domain.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/generic/msi/irq.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/klist.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/pinctrl/devinfo.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/pinctrl/consumer.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/seq_file.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/cgroup/writeback.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fs/dax.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/migration.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/kdev_t.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/kdev_t.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/dcache.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/rculist.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/rculist_bl.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/list_bl.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/bit_spinlock.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/lockref.h \
    $(wildcard include/config/arch/use/cmpxchg/lockref.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/path.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/list_lru.h \
    $(wildcard include/config/memcg/kmem.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/shrinker.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/radix-tree.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/pid.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/capability.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/capability.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/semaphore.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/fiemap.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/migrate_mode.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/percpu-rwsem.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/rcu_sync.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/blk_types.h \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/fs.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/limits.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/ioctl.h \
  arch/arm/include/generated/asm/ioctl.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/ioctl.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/asm-generic/ioctl.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/percpu_counter.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/dqblk_xfs.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/dqblk_v1.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/dqblk_v2.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/dqblk_qtree.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/projid.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/quota.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/nfs_fs_i.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/fcntl.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/fcntl.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/uapi/asm/fcntl.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/asm-generic/fcntl.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
    $(wildcard include/config/keys.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/key.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/assoc_array.h \
    $(wildcard include/config/associative/array.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/pinctrl/pinctrl-state.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/ratelimit.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/device.h \
    $(wildcard include/config/dmabounce.h) \
    $(wildcard include/config/iommu/api.h) \
    $(wildcard include/config/arm/dma/use/iommu.h) \
    $(wildcard include/config/arch/omap.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/pm_wakeup.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/platform_device.h \
    $(wildcard include/config/suspend.h) \
    $(wildcard include/config/hibernate/callbacks.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/mod_devicetable.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/uuid.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/uuid.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/interrupt.h \
    $(wildcard include/config/irq/forced/threading.h) \
    $(wildcard include/config/generic/irq/probe.h) \
    $(wildcard include/config/proc/fs.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/irqreturn.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/irqnr.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/irqnr.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/hardirq.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/vtime.h \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/virt/cpu/accounting.h) \
    $(wildcard include/config/irq/time/accounting.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/context_tracking_state.h \
    $(wildcard include/config/context/tracking.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/static_key.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/hardirq.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/irq.h \
    $(wildcard include/config/sparse/irq.h) \
    $(wildcard include/config/multi/irq/handler.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/mach-anycloud/include/mach/irqs.h \
    $(wildcard include/config/mach/ak37e.h) \
    $(wildcard include/config/mach/ak37d.h) \
    $(wildcard include/config/mach/ak39ev330.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/irq_cpustat.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/time/low/res.h) \
    $(wildcard include/config/timerfd.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/timerqueue.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/delay.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/delay.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/highmem.h \
    $(wildcard include/config/x86/32.h) \
    $(wildcard include/config/debug/highmem.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/mm.h \
    $(wildcard include/config/mem/soft/dirty.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/metag.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/shmem.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/hugetlbfs.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/arch/enable/split/pmd/ptlock.h) \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/kmemcheck.h) \
    $(wildcard include/config/userfaultfd.h) \
    $(wildcard include/config/pgtable/levels.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/arch/want/batched/unmap/tlb/flush.h) \
    $(wildcard include/config/x86/intel/mpx.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/auxvec.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/auxvec.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/uprobes.h \
    $(wildcard include/config/uprobes.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/cpu/has/asid.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/range.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/resource.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/resource.h \
  arch/arm/include/generated/asm/resource.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/resource.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/asm-generic/resource.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/page_ext.h \
    $(wildcard include/config/idle/page/tracking.h) \
    $(wildcard include/config/page/owner.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/stacktrace.h \
    $(wildcard include/config/stacktrace.h) \
    $(wildcard include/config/user/stacktrace/support.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/pgtable.h \
    $(wildcard include/config/highpte.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/proc-fns.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/glue-proc.h \
    $(wildcard include/config/cpu/arm7tdmi.h) \
    $(wildcard include/config/cpu/arm720t.h) \
    $(wildcard include/config/cpu/arm740t.h) \
    $(wildcard include/config/cpu/arm9tdmi.h) \
    $(wildcard include/config/cpu/arm920t.h) \
    $(wildcard include/config/cpu/arm922t.h) \
    $(wildcard include/config/cpu/arm925t.h) \
    $(wildcard include/config/cpu/arm926t.h) \
    $(wildcard include/config/cpu/arm940t.h) \
    $(wildcard include/config/cpu/arm946e.h) \
    $(wildcard include/config/cpu/arm1020.h) \
    $(wildcard include/config/cpu/arm1020e.h) \
    $(wildcard include/config/cpu/arm1022.h) \
    $(wildcard include/config/cpu/arm1026.h) \
    $(wildcard include/config/cpu/mohawk.h) \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/cpu/v6k.h) \
    $(wildcard include/config/cpu/pj4b.h) \
    $(wildcard include/config/cpu/v7.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/pgtable-nopud.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/pgtable-hwdef.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/pgtable-2level-hwdef.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/tlbflush.h \
    $(wildcard include/config/smp/on/up.h) \
    $(wildcard include/config/cpu/tlb/v4wt.h) \
    $(wildcard include/config/cpu/tlb/fa.h) \
    $(wildcard include/config/cpu/tlb/v4wbi.h) \
    $(wildcard include/config/cpu/tlb/feroceon.h) \
    $(wildcard include/config/cpu/tlb/v4wb.h) \
    $(wildcard include/config/cpu/tlb/v6.h) \
    $(wildcard include/config/cpu/tlb/v7.h) \
    $(wildcard include/config/arm/errata/720789.h) \
    $(wildcard include/config/arm/errata/798181.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/sched.h \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/lockup/detector.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/bpf/syscall.h) \
    $(wildcard include/config/sched/info.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/arch/wants/dynamic/task/struct.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/have/copy/thread/tls.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/sched.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/sched/prio.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/cputime.h \
  arch/arm/include/generated/asm/cputime.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/cputime.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/cputime_jiffies.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/sem.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/sem.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/ipc.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/ipc.h \
  arch/arm/include/generated/asm/ipcbuf.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/asm-generic/ipcbuf.h \
  arch/arm/include/generated/asm/sembuf.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/asm-generic/sembuf.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/shm.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/shm.h \
  arch/arm/include/generated/asm/shmbuf.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/asm-generic/shmbuf.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/shmparam.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/signal.h \
    $(wildcard include/config/old/sigaction.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/signal.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/signal.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/uapi/asm/signal.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/asm-generic/signal-defs.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/uapi/asm/sigcontext.h \
  arch/arm/include/generated/asm/siginfo.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/siginfo.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/asm-generic/siginfo.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/proportions.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/have/arch/seccomp/filter.h) \
    $(wildcard include/config/seccomp/filter.h) \
    $(wildcard include/config/checkpoint/restore.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/seccomp.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/latencytop.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/uapi/linux/magic.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/cgroup-defs.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/percpu-refcount.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/pgtable-2level.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/pgtable.h \
    $(wildcard include/config/have/arch/soft/dirty.h) \
    $(wildcard include/config/have/arch/huge/vmap.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/page-flags.h \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/ksm.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/huge_mm.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
    $(wildcard include/config/debug/tlbflush.h) \
    $(wildcard include/config/debug/vm/vmacache.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/vm_event_item.h \
    $(wildcard include/config/memory/balloon.h) \
    $(wildcard include/config/balloon/compaction.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/uaccess.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/uaccess.h \
    $(wildcard include/config/have/efficient/unaligned/access.h) \
    $(wildcard include/config/cpu/sw/domain/pan.h) \
    $(wildcard include/config/cpu/use/domains.h) \
    $(wildcard include/config/uaccess/with/memcpy.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/uaccess-unaligned.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/cacheflush.h \
    $(wildcard include/config/arm/errata/411920.h) \
    $(wildcard include/config/cpu/cache/vipt.h) \
    $(wildcard include/config/outer/cache.h) \
    $(wildcard include/config/frame/pointer.h) \
    $(wildcard include/config/debug/rodata.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/glue-cache.h \
    $(wildcard include/config/cpu/cache/v4.h) \
    $(wildcard include/config/cpu/cache/v4wb.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/cachetype.h \
    $(wildcard include/config/cpu/cache/vivt.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/kmap_types.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/mmc/host.h \
    $(wildcard include/config/mmc/debug.h) \
    $(wildcard include/config/regulator.h) \
    $(wildcard include/config/fail/mmc/request.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/leds.h \
    $(wildcard include/config/leds/triggers.h) \
    $(wildcard include/config/leds/trigger/ide/disk.h) \
    $(wildcard include/config/leds/trigger/camera.h) \
    $(wildcard include/config/leds/trigger/cpu.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/fault-inject.h \
    $(wildcard include/config/fault/injection/debug/fs.h) \
    $(wildcard include/config/failslab.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/mmc/core.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/mmc/card.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/mmc/pm.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/clk.h \
    $(wildcard include/config/common/clk.h) \
    $(wildcard include/config/have/clk/prepare.h) \
    $(wildcard include/config/have/clk.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/scatterlist.h \
    $(wildcard include/config/debug/sg.h) \
    $(wildcard include/config/need/sg/dma/length.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/io.h \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/need/mach/io/h.h) \
    $(wildcard include/config/pcmcia/soc/common.h) \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/pccard.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/xen/xen.h \
    $(wildcard include/config/xen.h) \
    $(wildcard include/config/xen/dom0.h) \
    $(wildcard include/config/xen/pvh.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/io.h \
    $(wildcard include/config/generic/iomap.h) \
    $(wildcard include/config/has/ioport/map.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/vmalloc.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/irq.h \
    $(wildcard include/config/irq/domain/hierarchy.h) \
    $(wildcard include/config/generic/pending/irq.h) \
    $(wildcard include/config/hardirqs/sw/resend.h) \
    $(wildcard include/config/generic/irq/legacy/alloc/hwirq.h) \
    $(wildcard include/config/generic/irq/legacy.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/irqhandler.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/io.h \
  arch/arm/include/generated/asm/irq_regs.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/irq_regs.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/irqdesc.h \
    $(wildcard include/config/irq/preflow/fasteoi.h) \
    $(wildcard include/config/handle/domain/irq.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/hw_irq.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/gpio.h \
    $(wildcard include/config/gpiolib.h) \
    $(wildcard include/config/arch/have/custom/gpio/h.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/gpio.h \
    $(wildcard include/config/arch/nr/gpio.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/gpio.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/of.h \
    $(wildcard include/config/sparc.h) \
    $(wildcard include/config/of/dynamic.h) \
    $(wildcard include/config/attach/node.h) \
    $(wildcard include/config/detach/node.h) \
    $(wildcard include/config/add/property.h) \
    $(wildcard include/config/remove/property.h) \
    $(wildcard include/config/update/property.h) \
    $(wildcard include/config/no/change.h) \
    $(wildcard include/config/change/add.h) \
    $(wildcard include/config/change/remove.h) \
    $(wildcard include/config/of/resolve.h) \
    $(wildcard include/config/of/overlay.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/property.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/fwnode.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/gpio/driver.h \
    $(wildcard include/config/gpiolib/irqchip.h) \
    $(wildcard include/config/of/gpio.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/irqchip/chained_irq.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/irqdomain.h \
    $(wildcard include/config/irq/domain.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/pinctrl/pinctrl.h \
    $(wildcard include/config/generic/pinconf.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/gpio/consumer.h \
    $(wildcard include/config/gpio/sysfs.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/dma-mapping.h \
    $(wildcard include/config/has/dma.h) \
    $(wildcard include/config/arch/has/dma/set/coherent/mask.h) \
    $(wildcard include/config/have/dma/attrs.h) \
    $(wildcard include/config/need/dma/map/state.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/dma-attrs.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/dma-direction.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/dma-mapping.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/dma-debug.h \
    $(wildcard include/config/dma/api/debug.h) \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/include/asm/xen/hypervisor.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/dma-mapping-common.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/kmemcheck.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/dma-coherent.h \
    $(wildcard include/config/have/generic/dma/coherent.h) \
  arch/arm/include/generated/asm/sizes.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/asm-generic/sizes.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/mach-anycloud/include/mach/ak_l2.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/mach-anycloud/include/mach/ak_l2_dual_inner.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/arch/arm/mach-anycloud/include/mach/map.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/driver_src/ak_mmc_hi3881/ak_mmc_src/ak_mci.h \
  /home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/kernel/include/linux/of_gpio.h \

/home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/driver_src/ak_mmc_hi3881/ak_mmc_src/ak_mci.o: $(deps_/home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/driver_src/ak_mmc_hi3881/ak_mmc_src/ak_mci.o)

$(deps_/home/hlf/share/MEIOU/SDK/AK37E_SDK_V1.05/os/driver_src/ak_mmc_hi3881/ak_mmc_src/ak_mci.o):
