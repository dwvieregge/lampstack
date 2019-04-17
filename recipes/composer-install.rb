## composer setup

execute "composer-get" do
  command "sudo curl -sS https://getcomposer.org/installer | sudo php"
  action :run
end

execute "composer-move" do
  command "sudo mv composer.phar /usr/local/bin/composer"
  action :run
end

execute "composer-link" do
  command "sudo ln -s /usr/local/bin/composer /usr/bin/composer"
  action :run
end