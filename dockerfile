FROM centos:7 
RUN yum -y update
# nginx dan postgresql
RUN yum -y install epel-release \
    yum -y install nginx postgresql postgresql-server postgresql-contrib
# Node.js 0.10.47 dari repositori EPEL
RUN yum -y install epel-release\
    yum -y install nodejs
# Set working directory untuk aplikasi Node.js (contoh)
WORKDIR /app
# Contoh: Salin aplikasi Node.js ke dalam kontainer
COPY . .
RUN yum install npm -y
RUN npm init -y
RUN npm install express
# Expose port 80 untuk Nginx
EXPOSE 80
# Expose port 5432 untuk PostgreSQL
EXPOSE 5432
# Expose port 3000 untuk aplikasi Node.js
EXPOSE 3000
#Jalankan aplikasi Node.js
CMD ["node", "myapp/app.js"]
