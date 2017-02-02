#!/bin/bash

#######################################################################
# INSTALL PYTHON 2.7
#######################################################################
mkdir -p $OPENSHIFT_DATADOG_DIR/bin/.localpython
mkdir -p $OPENSHIFT_DATADOG_DIR/bin/.tmp
cd $OPENSHIFT_DATADOG_DIR/bin/.tmp
wget http://www.python.org/ftp/python/2.7.1/Python-2.7.1.tgz
tar -zxvf Python-2.7.1.tgz
cd Python-2.7.1
./configure --prefix=$OPENSHIFT_DATADOG_DIR/bin/.localpython
make
make install
rm -r $OPENSHIFT_DATADOG_DIR/bin/.tmp
