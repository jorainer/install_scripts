# Some docker-related info

## Increase the SWAP size of the docker virtual machine


- connect to the virtual machine: `screen ~/Library/Containers/com.docker.docker/Data/vms/0/tty`
- create a new swapfile (64G):
  `dd if=/dev/zero of=/var/lib/swapfile count=64000000 bs=1024`
- change perfmissions and run `mkswap`
  `chmod go= /var/lib/swapfile && mkswap /var/lib/swapfile`
- activate the swap:
  `swapon -v /var/lib/swapfile`
- detach with `C+a d`.
