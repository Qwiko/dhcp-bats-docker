# dhcp-bats-docker

Spawns up an isolated docker compose with kea-dhcp and busybox. Issues bats test commands on busybox to get leases and bootfile-name from kea with different vendor-classes.

```bash
$ bats test
dhcp-docker-tests.bats
 ✓ test vendor: unknown
 ✓ test vendor: ciscopnp
 ✓ test vendor: Arista
 ✓ test vendor: arista
```
