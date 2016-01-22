## Build robomongo for ubuntu using vagrant

Work on the robomongo ubuntu vagrant box is still in progress.

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

Install g++ & latest QT version:
```
sudo apt-get install build-essential git libssl-dev libgl1-mesa-dev
wget http://master.qt.io/archive/qt/5.5/5.5.1/qt-opensource-linux-x64-5.5.1.run
chmod +x qt-opensource-linux-x64-5.5.1.run
./qt-opensource-linux-x64-5.5.1.run
```
After this follow the wizard to setup QT.

[More details](https://wiki.qt.io/Install_Qt_5_on_Ubuntu)

Install scons. Download [archive](http://sourceforge.net/projects/scons/files/scons/2.4.1/scons-2.4.1.tar.gz/download?use_mirror=heanet)

```
tar -xvzf scons-2.4.1.tar.gz
cd scons-2.4.1
python setup.py install
```

Install cmake:
```
wget https://cmake.org/files/v3.4/cmake-3.4.2-Linux-x86_64.sh
chmod +x cmake-3.4.2-Linux-x86_64.sh
./cmake-3.4.2-Linux-x86_64.sh
```

Copy cmake to `/opt/cmake`
