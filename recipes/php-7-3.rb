# Install PHP 7.3

# Start by enabling the PHP 7.3 Remi repository
execute "php-remi-repo" do
  command "sudo yum-config-manager --enable remi-php73"
  action :run
end

# Install PHP 7.3 and some of the most common PHP modules
execute "php-7-3-install" do
  command "sudo yum install -y php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysqlnd"
  action :run
end

execute "httpd-restart" do
  command "sudo /sbin/httpd -k restart"
  action :run
end