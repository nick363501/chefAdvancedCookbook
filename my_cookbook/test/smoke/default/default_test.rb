# # encoding: utf-8

# Inspec test for recipe my_cookbook::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root') do
	it { should exist }
	skip 'This is an example test'
	end
end 
	
describe package('cowsay') do
	it { should be_installed }
	end 

describe package('default-jdk') do
	it { should be_installed }
	end 
