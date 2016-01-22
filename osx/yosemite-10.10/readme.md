## Build robomongo for OSX using vagrant

Start vagrant
```
./bin/up.sh
```
Build robomongo:
```
./bin/build.sh
```

## Preparing vagrant box to build robomongo

This is manual process at the moment.

1. Install Xcode
2. [Download](http://www.qt.io/download-open-source/#section-2) and install latest QT version (in the wizard select only clang)
3. [Download](http://scons.org/pages/download.html) and install `python setup.py install` scons
4. [Download](https://cmake.org/download/) and install cmake


## Packaging vagrant box

We've prepared vagrant box for OSX. If you want to play with your own vagrant box you need to package it and upload to [Store](https://atlas.hashicorp.com)

```
vagrant package --output my.box
```
After this upload this box.
