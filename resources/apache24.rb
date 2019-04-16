resource_name :httpd

action :create do
    execute "httpd-install" do
        command "sudo yum install -y httpd"
        action :run
        ##not_if { ::File.exist?('/var/website/command.txt') }
  end

end