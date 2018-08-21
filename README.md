# Description

This repository is about the scripts to install and deploy Ceph on Tstore. It also includes scripts that install bcache and fio scripts.

---

[ceph.conf](https://github.com/MiracleMa/Ceph-Shell/blob/master/ceph.conf)
</br>Our ceph configuration file on Tstore.
<br><br>
[clean-ceph.sh](https://github.com/MiracleMa/Ceph-Shell/blob/master/clean-ceph.sh) and [clean-every.sh](https://github.com/MiracleMa/Ceph-Shell/blob/master/clean-every.sh)<br>
Clean environment of cluster, but now we don't use it.<br><br>

[clean-test.sh](https://github.com/MiracleMa/Ceph-Shell/blob/master/clean-test.sh)<br>
When we use fio to test performance of block device, we need to use it to clean environment.<br><br>

[create_rbd_image.sh](https://github.com/MiracleMa/Ceph-Shell/blob/master/create_rbd_image.sh) and [delete_rbd_image.sh](https://github.com/MiracleMa/Ceph-Shell/blob/master/delete_rbd_image.sh)<br>Use to create and delete rbd images.<br><br>

[dmsetup_all.sh](https://github.com/MiracleMa/Ceph-Shell/blob/master/dmsetup_all.sh) and [dmsetup_remove.sh](https://github.com/MiracleMa/Ceph-Shell/blob/master/dmsetup_remove.sh)<br>Remove PV, LV, VG in lvm when we purge Osd.<br><br>

[get_bcache.sh](https://github.com/MiracleMa/Ceph-Shell/blob/master/get_bcache.sh) and [get_bcache_all.sh](https://github.com/MiracleMa/Ceph-Shell/blob/master/get_bcache_all.sh) <br>Get the bcache name before create Osd on bcache.<br><br>

[make_rpm.sh](https://github.com/MiracleMa/Ceph-Shell/blob/master/make_rpm.sh)<br>
Build the rpm package for Ceph.<br><br>

[map_image.sh](https://github.com/MiracleMa/Ceph-Shell/blob/master/map_image.sh) and [unmap_image.sh](https://github.com/MiracleMa/Ceph-Shell/blob/master/unmap_image.sh)<br>
Map and unmap rbd images to block device.<br><br>

[osd_bcache_create.sh](https://github.com/MiracleMa/Ceph-Shell/blob/master/osd_bcache_create.sh)<br>Create Osd on bcache after executing get_bcache_all.sh.<br><br>

[osd_create.sh](https://github.com/MiracleMa/Ceph-Shell/blob/master/osd_create.sh) and [osd_delete.sh](https://github.com/MiracleMa/Ceph-Shell/blob/master/osd_delete.sh)<br>
Create Osd and purge Osd in the cluster.<br><br>

[systemctl_all.sh](https://github.com/MiracleMa/Ceph-Shell/blob/master/systemctl_all.sh) and [systemctl_every.sh](https://github.com/MiracleMa/Ceph-Shell/blob/master/systemctl_every.sh)<br>Start or stop the Osd daemon. when we purge Osd, first stop the Osd daemon.<br><br>

