# Description

fio scripts for testing performance of Ceph.<br>
The fio parameter website: [Fio](http://git.kernel.dk/cgit/fio/plain/HOWTO)

I only tested Ceph with rados and rbd.
<br>In the test of rados, I found that I need to set nrfiles to split the origin file because rados has the parameter `osd_max_object_size`.<br><br>
In the test of rbd, I found the engine of rbd is not useful. The engine has some bugs. If I use the parameter `nrfiles`, it will write the files into your current directory, sometimes will cause the overflow of your local file system and death of the monitor.
<br><br>So I use the mapped block device of image to test rbd. I map the image to a block device and mount it on my directory, and then use the engine of libaio to test rbd. The influence of this approach is the overhead of log of the file system on block device. But it is the general usage of rbd.<br><br>
The file `rbd.job` is the configuration file of using engine libaio.<br><br>
The parameters that we need to concern on are `iodepth`, `buffered/direct`, `size`, `io_size`, `nrfiles`, `filesize`.