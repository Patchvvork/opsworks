# Install elasticsearch


# Import the Elasticsearch public GPG key into apt

execute "Import public key" do
	command "wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -"
end

# Create the Elasticsearch source list

execute "Add Elasticsearch source list" do
	command "echo 'deb http://packages.elasticsearch.org/elasticsearch/1.4/debian stable main' | sudo tee /etc/apt/sources.list.d/elasticsearch.list"
end

# Update apt package database

execute "apt-get update" do
	command "apt-get update"
end

# Install Elasticsearch

execute "Install Elasticsearch" do
	command "apt-get -y install elasticsearch=1.4.4"
end

# Restart Elasticsearch

execute "Restart Elasticsearch" do
	command "service elasticsearch restart"
end

# Make Elasticsearch run on boot up

execute "Run Elasticsearch on boot up" do
	command "update-rc.d elasticsearch defaults 95 10"
end