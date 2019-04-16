# Install & Enable Apache

execute "httpd-install" do
  command "sudo yum install -y httpd"
  action :run
end

execute "httpd-start" do
  command "sudo /sbin/httpd -k start"
  action :run
end

