# qbt-musl-cross-make

🔵 This project uses a modified version of <https://git.zv.io/toolchains/musl-cross-make> which is derived from [musl-cross-make](https://github.com/richfelker/musl-cross-make)

## Build Info

Custom builds of `musl-cross-make` that sync with [Apline OS Linux target architecture configurations](https://git.alpinelinux.org/aports/tree/main/gcc/APKBUILD#n292).

```bash
aarch64-linux-musl="--with-arch=armv8-a --with-abi=lp64"
arm-linux-musleabi="--with-arch=armv5te --with-tune=arm926ej-s --with-float=soft --with-abi=aapcs-linux"
arm-linux-musleabihf="--with-arch=armv6zk --with-tune=arm1176jzf-s --with-fpu=vfp --with-float=hard --with-abi=aapcs-linux"
armv6-linux-musleabihf="--with-arch=armv6zk --with-tune=arm1176jzf-s --with-fpu=vfp --with-float=hard --with-abi=aapcs-linux"
armv7l-linux-musleabihf="--with-arch=armv7-a --with-tune=generic-armv7-a --with-fpu=vfpv3-d16 --with-float=hard --with-abi=aapcs-linux --with-mode=thumb"
i686-linux-musl="--with-arch=i686 --with-tune=generic --enable-cld"
x86_64-linux-musl=""
mips-linux-musl="--with-arch=mips32 --with-mips-plt --with-float=soft --with-abi=32"
mipsel-linux-musl="--with-arch=mips32 --with-mips-plt --with-float=soft --with-abi=32"
mips64-linux-musl="--with-arch=mips3 --with-tune=mips64 --with-mips-plt --with-float=soft --with-abi=64"
mips64el-linux-musl="--with-arch=mips3 --with-tune=mips64 --with-mips-plt --with-float=soft --with-abi=64"
powerpc-linux-musl="--enable-secureplt --enable-decimal-float=no"
powerpc64le-linux-musl="--with-abi=elfv2 --enable-secureplt --enable-decimal-float=no --enable-targets=powerpcle-linux"
s390x-linux-musl="--with-arch=z196 --with-tune=zEC12 --with-zarch --with-long-double-128 --enable-decimal-float"
riscv64-linux-musl="--with-arch=rv64gc --with-abi=lp64d --enable-autolink-libatomic"
```

## Download

You can use this URL to always get the latest release:

```
https://github.com/userdocs/qbt-musl-cross-make/releases/latest/download/
```

By appending the desired target:

```
aarch64-linux-musl.tar.xz
arm-linux-musleabi.tar.xz
arm-linux-musleabihf.tar.xz
armv6-linux-musleabihf.tar.xz
armv7l-linux-musleabihf.tar.xz
i686-linux-musl.tar.xz
mips-linux-musl.tar.xz
mips64-linux-musl.tar.xz
mips64el-linux-musl.tar.xz
mipsel-linux-musl.tar.xz
powerpc-linux-musl.tar.xz
powerpc64le-linux-musl.tar.xz
riscv64-linux-musl.tar.xz
s390x-linux-musl.tar.xz
x86_64-linux-musl.tar.xz
```

For example, for `x86_64`:

```
https://github.com/userdocs/qbt-musl-cross-make/releases/latest/download/x86_64-linux-musl.tar.xz
```

## Docker

There are docker images of the toolchains here <https://hub.docker.com/repository/docker/userdocs/qbt-mcm/general>

Tags are the toolset names.

```bash
docker pull userdocs/qbt-mcm:tagname
```

For example:

```bash
docker pull userdocs/qbt-mcm:aarch64-linux-musl
```

## Configuration

The build configuration is defined in the `config.mak` file [here](https://github.com/userdocs/qbt-musl-cross-make/blob/main/custom/config.mak)

The versions configuration is defined in the `versions.mak` file [here](https://github.com/userdocs/qbt-musl-cross-make/blob/main/custom/versions.mak)