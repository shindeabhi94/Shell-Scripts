#!/bin/bash

#################################################################
#  Purpose : Parallel Command Installation		        #
#  Author  : Abhijit Shinde                                     #
#################################################################

cd /usr/local
wget -O /usr/local/parallel-20181122.tar.bz2 --no-check-certificate http://ftp.gnu.org/gnu/parallel/parallel-20181122.tar.bz2 > /dev/null
bunzip2 parallel-20181122.tar.bz2
tar -vxf parallel-20181122.tar	> /dev/null
rm -rf parallel-20181122.tar.bz2
cd parallel-20181122
./configure > /dev/null
make && make install > /dev/null
echo -e "Installation Successfully Completed\n"
parallel -V

