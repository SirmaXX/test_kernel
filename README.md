# Test kernel

Bu linux sistemi, bu blog yazısı için hazırlanmıştır.

https://medium.com/@dbsirmax/llm-os-ii-8b5e1aa17ade


## Nasıl çalıştırılır
Yukarıdaki blog yazımı takip ederek bu sürece erişebilirsiniz.

### Dosya yapısı
Yukarıdaki işlemlerden sonra elde edeceğiniz dosya yapısı
.
├── bin

│   ├── cat -> busybox

│   ├── clear -> busybox

│   ├── ls -> busybox

│   ├── mknod -> busybox

│   ├── mount -> busybox

│   ├── ps -> busybox

│   ├── sh -> busybox

│   └── uname -> busybox

├── busybox-1.36.1

│   ├── .....
├── linux-6.6
│   ├── ....
├── minimal_initramfs

│   ├── bin

│   ├── etc

│   ├── init

│   └── scripts

├── minimal_initramfs.cpio.gz

└── README.md

### Kullanım
İlk olarak qemu kurmalısınız ardından bu komutu çalıştırarak aşağıdaki çıktıyı elde edeceksiniz.




```
qemu-system-x86_64 \
    -kernel linux-6.6/arch/x86/boot/bzImage \
    -initrd minimal_initramfs.cpio.gz \
    -append "console=ttyS0 rdinit=/init" \
    -nographic

```

Çıktımız şu şekilde olacaktır.

![kernel and initframe image](ui.png "kernel and initframe image")




