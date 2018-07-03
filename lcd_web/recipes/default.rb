#
# Cookbook:: lcd_web
# Recipe:: default
#
# Copyright:: 2018, Robert Nicolais, All Rights Reserved.
include_recipe 'lcd_web::users'

package 'net-tools' do
  action :install
end

package 'httpd' do 
    action :install 
end 
service 'httpd' do 
    action [:enable, :start] 
end

template '/var/www/html/index.html' do
    cookbook 'lcd_web'
    source 'index.html.erb'
    owner 'apache'
    group 'apache'
    variables(
      greeting_scope: node['greeting_scope'],
      greeting: node['greeting'],
      fqdn: node['fqdn']
    )
  end

  execute 'systemctl start httpd' do
    only_if { index_exists? }
  end

#package platform_package_httpd

#service platform_service_httpd do
#  action [:enable, :start]
#end

hello_httpd 'greet world' do
  greeting "Hello"
  action :create
end