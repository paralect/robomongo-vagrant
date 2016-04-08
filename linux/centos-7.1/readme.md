## Build robomongo for centos using vagrant

Build Robomongo in Centos based vagrant.

Start vagrant
```
./bin/up.sh
```
Build robomongo:
```
./bin/build.sh
```

## Preparing vagrant box to build robomongo

Install QT and dependencies:

```
sudo yum install openssl-devel
sudo yum groupinstall "Development Tools"
sudo yum install mesa-libGL-devel
```

Install QT:

```
wget http://download.qt.io/official_releases/qt/5.5/5.5.1/qt-opensource-linux-x64-5.5.1.run
chmod +x qt-opensource-linux-x64-5.5.1.run
./qt-opensource-linux-x64-5.5.1.run
```

Install scons:

```
wget http://downloads.sourceforge.net/project/scons/scons/2.4.1/scons-2.4.1.tar.gz
tar -xvzf scons-2.4.1.tar.gz
cd scons-2.4.1
sudo python setup.py install
```

Install cmake:
```
wget https://cmake.org/files/v3.4/cmake-3.4.2-Linux-x86_64.sh
chmod +x cmake-3.4.2-Linux-x86_64.sh
./cmake-3.4.2-Linux-x86_64.sh
mkdir /opt/cmake
mv ./cmake-3.4.2-Linux-x86_64 /opt/cmake
```

Install `rpmbuild`:
```
sudo yum install rpm-build
```
