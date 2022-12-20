#!bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo systemctl start httpd
sudo chown -R apache:apache /var/www/html/
sudo chmod -R 500 /var/www/html/

ami_id=$(curl -s http://169.254.169.254/latest/meta-data/ami-id)
instance_id=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
instance_type=$(curl -s http://169.254.169.254/latest/meta-data/instance-type)
local_ipv4=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)
local_hostname=$(curl -s http://169.254.169.254/latest/meta-data/local-hostname)
public_ipv4=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)
public_hostname=$(curl -s http://169.254.169.254/latest/meta-data/public-hostname)
availability_zone=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)

echo "<h1>AMI ID: $ami_id</h1>" >> /var/www/html/index.html
echo "<h1>Instance ID: $instance_id</h1>" >> /var/www/html/index.html
echo "<h1>Instance Type: $instance_type</h1>" >> /var/www/html/index.html
echo "<h1>Instance Local IPv4: $local_ipv4</h1>" >> /var/www/html/index.html
echo "<h1>Instance Local Hostname: $local_hostname</h1>" >> /var/www/html/index.html
echo "<h1>Instance Public IPv4: $public_ipv4</h1>" >> /var/www/html/index.html
echo "<h1>Instance Public Hostname: $public_hostname</h1>" >> /var/www/html/index.html
echo "<h1>Availability Zone: $availability_zone</h1>" >> /var/www/html/index.html
echo "<br>" >> /var/www/html/index.html
echo "<h1>Michel T. Dellabeneta</h1>" >> /var/www/html/index=.html