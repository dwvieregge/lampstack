# Restart Apache

execute "httpd-start" do
  command "sudo /sbin/httpd -k restart"
  action :run
end

