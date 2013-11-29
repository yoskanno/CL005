### Install DB2
# In advance, you must place db2server.rsp to /opt/chef/chef-repo/cookbooks/DB2/files/default
cookbook_file "/work/db2server.rsp" do
	source "db2server.rsp"
	mode 00777
end

bash "install DB2" do
	code <<-EOC
		DB2_SETUP_COMMAND=`find /work -name db2setup | grep "DB2/server/db2setup"`
		if [ ! -d /opt/ibm/db2 ]; then
			${DB2_SETUP_COMMAND} -r /work/db2server.rsp
		fi
	EOC
end

file "/work/db2server.rsp" do
	action :delete
end
