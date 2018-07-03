package 'postgresql'  do 
	notifies :run, 'execute[postgresql-init]',:immediately

end


execute 'postgresql-init' do
	command 'ls'
	action :nothing
end 

service 'postgresql' do 
	action [:enable, :start]
end 



# Copyright:: 2017, The Authors, All Rights Reserved.
