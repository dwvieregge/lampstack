# Install & Enable Apache

##package "apache2" do
##  action :install
##end

execute "httpd-install" do
  command "sudo yum install -y httpd"
  action :run
end

