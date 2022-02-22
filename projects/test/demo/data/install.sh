#! /bin/bash

// install tree
sudo yum install tee
sudo tee /etc/yum.repos.d/pgdg.repo<<EOF
sudo yum install postgresql13 postgresql13-server
sudo /usr/pgsql-13/bin/postgresql-13-setup initdb
sudo systemctl start postgresql-13
sudo systemctl enable postgresql-13
sudo systemctl status postgresql-13
sudo passwd postgres
read password "password1"
su - postgres
psql -c "ALTER USER postgres WITH PASSWORD 'password1';"
echo "installation done done done"
 
