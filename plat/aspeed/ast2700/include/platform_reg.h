/*
 * Copyright (c) 2022, ARM Limited and Contributors. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#ifndef PLATFORM_REG_H
#define PLATFORM_REG_H

/* GIC */
#define GICD_BASE	U(0x12200000)
#define GICD_SIZE	U(0x10000)
#define GICR_BASE	U(0x12280000)
#define GICR_SIZE	U(0x100000)

/* SCU */
#define SCU_BASE	U(0x14c02000)
#define SCU_SMP_MBOX(x)	(SCU_BASE + 0x180 + (x) * 4)

/* UART */
#define UART5_BASE	U(0x12c1a000)

#endif
