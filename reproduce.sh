lsb_release -a
#No LSB modules are available.
#Distributor ID:	Ubuntu
#Description:	Ubuntu 20.04.2 LTS
#Release:	20.04
#Codename:	focal
gcc --version
#gcc (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0
#Copyright (C) 2019 Free Software Foundation, Inc.
#This is free software; see the source for copying conditions.  There is NO
#warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
/usr/bin/swig4.0 -version
#SWIG Version 4.0.1
#
#Compiled with g++ [x86_64-pc-linux-gnu]
#
#Configured options: +pcre
#
#Please see http://www.swig.org for reporting bugs and further information
python3 -m venv ./venv
source venv/bin/activate
python3 --version
#Python 3.8.5
python3 setup.py build_ext --inplace --swig /usr/bin/swig4.0
python3 setup.py install
python3 reproduce.py

