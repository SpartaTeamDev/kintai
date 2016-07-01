# Login information: demo@example.com / @demo*

###################
# For UBUNTU users
###################

# Edit the hosts file: sudo vi /etc/hosts
127.0.0.1   kintai.local

# Copy the .conf file
sudo cp /var/www/html/kintai/apache/kintai.local.conf /etc/apache2/sites-available/
sudo a2ensite kintai.local.conf
sudo service apache2 reload

####################
# For WINDOWS users
####################

# Add the following line to c:\Windows\System32\drivers\etc\hosts
127.0.0.1   kintai.local

# Add the following line to c:\wamp\bin\apache\apache2.4.9\conf\extra\httpd-vhosts.conf
IncludeOptional "d:/wamp/www/kintai/apache/httpd-vhosts.conf"

# Restart WampServer