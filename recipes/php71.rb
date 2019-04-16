# Install PHP 7.1

# Remove the old PHP
execute "php-uninstall" do
  command "sudo yum remove *php*"
  action :run
end

# Install PHP 7.1 and some of the most common PHP modules
execute "php-7-1-install" do
  command "sudo yum install -y php71"
  action :run
end

execute "httpd-restart" do
  command "sudo /sbin/httpd -k restart"
  action :run
end