#!/bin/bash
# Keterangan U sebagai User lalu H sebagai Host 
#P sebagai password nya lalu ( test ) sebagai databse yang akan di backup  
pg_dump -U postgresql -h <End Point kalau di RDS > -p postgresql test > /opt/oss/data/backups/.sqlfile

