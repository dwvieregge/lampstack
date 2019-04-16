#
# Cookbook:: lampstack
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

execute "update-upgrade" do
  #command "sudo apt-get update && sudo apt-get upgrade -y"
  command "sudo yum update && sudo yum upgrade -y"
  action :run
end