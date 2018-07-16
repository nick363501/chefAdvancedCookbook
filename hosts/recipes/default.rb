# cookbook_file '/etc/hosts' do
#     source "drchosts"
# end

file '/etc/hosts' do 
    content <<-EOH
    10.150.160.30   chefws
    10.150.160.35   chefdev
    10.150.160.38   chefprod
    10.150.160.32   chefserver
    127.0.0.1       localhost
    EOH
end