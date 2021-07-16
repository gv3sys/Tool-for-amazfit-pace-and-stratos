#!/bin/sh

cp install-recovery.sh /system/etc/install-recovery.sh
chmod 0755 /system/etc/install-recovery.sh
chcon u:object_r:toolbox_exec:s0 /system/etc/install-recovery.sh
rm /system/bin/install-recovery.sh
ln -s /system/etc/install-recovery.sh /system/bin/install-recovery.sh
cp su /system/xbin/su
chmod 0755 /system/xbin/su
chcon u:object_r:system_file:s0 /system/xbin/su
cp su /system/xbin/daemonsu
chmod 0755 /system/xbin/daemonsu
chcon u:object_r:system_file:s0 /system/xbin/daemonsu
cp supolicy /system/xbin/supolicy
chmod 0755 /system/xbin/supolicy
chcon u:object_r:system_file:s0 /system/xbin/supolicy
cp libsupol.so /system/lib/libsupol.so
chmod 0644 /system/lib/libsupol.so
chcon u:object_r:system_file:s0 /system/lib/libsupol.so
cp 99SuperSUDaemon /system/etc/init.d/99SuperSUDaemon
chmod 0755 /system/etc/init.d/99SuperSUDaemon
chcon u:object_r:system_file:s0 /system/etc/init.d/99SuperSUDaemon
cp /system/bin/app_process32 /system/bin/app_process32_original
chown root:shell /system/bin/app_process32_original
chmod 0755 /system/bin/app_process32_original
chcon u:object_r:zygote_exec:s0 /system/bin/app_process32_original
cp /system/bin/app_process32 /system/bin/app_process_init
chown root:shell /system/bin/app_process_init
chmod 0755 /system/bin/app_process_init
chcon u:object_r:system_file:s0 /system/bin/app_process_init
rm /system/bin/app_process
ln -s /system/xbin/daemonsu /system/bin/app_process
rm /system/bin/app_process32
ln -s /system/xbin/daemonsu /system/bin/app_process32
/system/xbin/su --install