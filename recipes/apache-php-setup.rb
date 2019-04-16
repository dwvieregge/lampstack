## apache and php setup

package 'httpd' do
  action :install
end

package "php" do
  action :install
end

package "php-pear" do
  action :install
end

package "php-mysql" do
  action :install
end

%w[ /etc /etc/php /etc/php/7.0 /etc/php/7.0/cli ].each do |path|
  directory path do
    owner 'root'
    group 'root'
    mode '0755'
  end
end

cookbook_file "/etc/php/7.0/cli/php.ini" do
  source "php.ini"
  mode "0644"
  notifies :restart, "service[httpd]"
end

execute "chownlog" do
  command "chown www-data /var/log/php"
  action :nothing
end

directory "/var/log/php" do
  action :create
  notifies :run, "execute[chownlog]"
end