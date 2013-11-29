### Customize DB2 for initial Config
# In advance, you must place customizeDB2.sh to /opt/chef/chef-repo/cookbooks/DB2/files/default
cookbook_file "/work/customizeDB2.sh" do
	source "customizeDB2.sh"
	mode 00777
end

bash "customize DB2" do
	code <<-EOC
		su - db2inst1 -c "/work/customizeDB2.sh"
	EOC
end

file "/work/customizeDB2.sh" do
	action :delete
end
