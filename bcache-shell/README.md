# Description

Shell scripts of install bcache on Tstore.<br>
Because bcache can't unregister in SSD cleanly, we need to `mkfs` after unregistering. Due to the execution time of `echo 1 > unregister`, we need to `sleep 2s` after `echo`, then `mkfs`.<br>
Before `make-bcache`, we need to call `wipefs` to remove the file system on block device because bcache acts on raw device.