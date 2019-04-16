# Install & Enable Apache

execute "httpd-install" do
  command "sudo yum install -y httpd"
  action :run
end

execute "php-install" do
  command "sudo yum install -y php70 php70-mysqlnd"
  action :run
end

execute "httpd-start" do
  command "sudo /sbin/httpd -k"
  action [:start, :restart]
end

