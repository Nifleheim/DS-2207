FROM centos:7
#As request, The OS image from Higher version or Equal version of Centos 7

RUN yum -y update
#Update the local repository index of Yum

RUN yum -y install epel-release \
    yum -y install nginx postgresql postgresql-server postgresql-contrib
#Nginx and Postgresql Installation from EPEL Repository

RUN yum -y install epel-release\
    yum -y install nodejs
#Node Js Installation from EPEL Repository (0.10.47)

WORKDIR /app
#Set working directory for Node Js App

COPY . .
#Copy All files to Container

RUN yum install npm -y
RUN npm init -y
RUN npm install express

EXPOSE 80
#Expose Port "80" for Nginx Service

EXPOSE 5432
#Expose Port "5432" for PostgreSQL Service

EXPOSE 3000
#Expose Port "3000" for Node Js Service

CMD ["node", "myapp/app.js"]
#Running Node Js App
