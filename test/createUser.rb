### create user wlpadmin
user "wlpadmin" do
	action :create
	comment "wlpadmin"
	uid 1000
	home "/home/wlpadmin"
	shell "/bin/bash"
	password password
	supports :manage_home => true
end

### create user wlpuser01
user "wlpuser01" do
	action :create
	comment "wlpuser01"
	uid 1001
	home "/home/wlpuser01"
	shell "/bin/bash"
	password password
	supports :manage_home => true
end
