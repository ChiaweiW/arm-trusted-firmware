#include <lib/psci/psci.h>

static const plat_psci_ops_t plat_psci_ops = {
	.validate_ns_entrypoint = NULL,
};

int plat_setup_psci_ops(uintptr_t sec_entrypoint,
			const plat_psci_ops_t **psci_ops)
{
	*psci_ops = &plat_psci_ops;
	return 0;
}
