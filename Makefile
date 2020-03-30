all: install_requirements configure_host launch_mgmt_cluster verify

install_requirements:
	./01_prepare_host.sh

configure_host:
	./02_configure_host.sh

launch_mgmt_cluster:
	./03_launch_mgmt_cluster.sh

verify:
	./04_verify.sh

clean: delete_mgmt_cluster host_cleanup

delete_mgmt_cluster:
	./cluster_cleanup.sh

host_cleanup:
	./host_cleanup.sh

test:
	./05_test.sh

test_v1a1:
	./05_test_v1alpha1.sh

test_v1a2:
	./05_test.sh

test_v1a3:
	./05_test.sh

lint:
	./hack/shellcheck.sh

.PHONY: all install_requirements configure_host launch_mgmt_cluster clean delete_mgmt_cluster host_cleanup verify test lint
