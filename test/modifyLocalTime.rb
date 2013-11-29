### UTC to JST
link "/usr/share/zoneinfo/Japan" do
	to "/etc/localtime"
	link_type :symbolic
	action :create
end
