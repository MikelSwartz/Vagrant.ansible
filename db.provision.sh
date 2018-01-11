#!/bin/bash
cd /vagrant
if [ -s mysql-community-release-el7-5.noarch.rpm ] ; then
  echo mysql-community-release-el7-5.noarch.rpm already downloaded.
else
  wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
fi
#rpm -ivh mysql-community-release-el7-5.noarch.rpm 
