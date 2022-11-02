#
# Copyright (c) 2022, ARM Limited and Contributors. All rights reserved.
#
# SPDX-License-Identifier: BSD-3-Clause
#

include drivers/arm/gic/v3/gicv3.mk
include lib/xlat_tables_v2/xlat_tables.mk

PLAT_AST2700 := plat/aspeed/ast2700

PLAT_INCLUDES := \
	-I${PLAT_AST2700}/include

BL31_SOURCES += \
	common/desc_image_load.c		\
	lib/cpus/aarch64/cortex_a35.S		\
	plat/common/plat_gicv3.c		\
	plat/common/plat_psci_common.c		\
	drivers/ti/uart/aarch64/16550_console.S	\
	${PLAT_AST2700}/plat_helpers.S		\
	${PLAT_AST2700}/plat_topology.c		\
	${PLAT_AST2700}/plat_bl31_setup.c	\
	${PLAT_AST2700}/plat_pm.c		\
	${GICV3_SOURCES}			\
	${XLAT_TABLES_LIB_SRCS}

PROGRAMMABLE_RESET_ADDRESS := 1

ENABLE_SVE_FOR_NS := 0
