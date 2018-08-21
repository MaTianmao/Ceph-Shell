#!/bin/bash

bash rbdmap/umountrbd.sh
bash unmap_image.sh
bash delete_rbd_image.sh
bash create_rbd_image.sh
bash map_image.sh
bash mkfs.sh
cd rbdmap
bash mountrbd.sh

