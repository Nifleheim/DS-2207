#!/bin/bash

# express
sudo systemctl start express

# nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# postgresql
sudo systemctl enable postgresql
sudo systemctl start postgresql

