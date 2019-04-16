# Install PHP 7.2

# Remove the old PHP
execute "php-uninstall" do
  command "sudo yum remove *php*"
  action :run
end

# Install PHP 7.2 and some of the most common PHP modules
execute "php-7-2-install" do
  command "sudo amazon-linux-extras install -y php7.2"
  action :run
end

execute "httpd-restart" do
  command "sudo /sbin/httpd -k restart"
  action :run
end