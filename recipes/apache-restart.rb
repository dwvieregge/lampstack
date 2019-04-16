# Restart Apache

execute "httpd-restart" do
  command "sudo /sbin/httpd -k restart"
  action :run
end

