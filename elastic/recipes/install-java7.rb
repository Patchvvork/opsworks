# Add the Oracle Java PPA to apt

#execute "add java to apt" do
#	command "add-apt-repository -y ppa:webupd8team/java"
#end

# Update apt package database

# Install the latest stable version of java 8

#execute "Install latest java stable version" do
#	command "apt-get -y install oracle-java8-installer"
#end

#execute "install openjdk-8-jdk" do
#	command "apt-get install -y openjdk-8-jdk"
#end

# Install openjdk-8-jdk

execute "openjdk-8-jdk" do
	command "yum install java-1.8.0-openjdk -y"
end

# Install openjdk-8-jdk-devel

execute "openjdk-8-jdk" do
	command "yum install java-1.8.0-openjdk-devel -y"
end