# Add the Oracle Java PPA to apt

#execute "add java to apt" do
#	command "add-apt-repository -y ppa:webupd8team/java"
#end

# Update apt package database

execute "apt-get update" do
	command "apt-get update"
end

# Install the latest stable version of java 8

#execute "Install latest java stable version" do
#	command "apt-get -y install oracle-java8-installer"
#end

#execute "install openjdk-8-jdk" do
#	command "apt-get install -y openjdk-8-jdk"
#end

# Install openjdk-7-jre

package "openjdk-7-jre" do
	action :install
end

# Install openjdk-7-jdk

package "openjdk-7-jdk" do
	action :install
end