#! /bin/bash
yum update -y
yum install python3 -y
pip3 install flask
pip3 install flask_mysql
yum install git -y
cd /home/ec2-user
USER=${user-date-git-name}
git clone https://github.com/$USER/ContactListAppTerraform.git 
cd ContactListAppTerraform
python3 contact-list-app.py