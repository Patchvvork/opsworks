# Modify yaml file then restart

# Modify the Elasticsearch yaml config file

cookbook_file "/etc/elasticsearch/elasticsearch.yml" do
	source "elasticsearch.yml.erb"
	mode "0644"
end

# Restart the Elasticsearch service

service "elasticsearch" do
	action :restart
end


