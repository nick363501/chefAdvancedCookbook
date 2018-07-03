#
# Cookbook:: lcd_web
# Recipe:: users
#
# Copyright:: 2018, Robert Nicolais, All Rights Reserved.
group 'developers'

user 'webadmin' do
  action :create 
  uid '1020'
  gid 'developers'
  home '/home/webadmin'
  shell '/bin/bash'
end