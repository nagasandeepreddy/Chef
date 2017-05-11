# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "nagasandeep"
client_key               "#{current_dir}/nagasandeep.pem"
chef_server_url          "https://api.chef.io/organizations/sandeep_1"
cookbook_path            ["#{current_dir}/../cookbooks"]
https_proxy	"https://www-proxy.us.oracle.com:80"
