
puts "*** RUNNING bundle-apache-java-tomcat-example webapps.rb"

default['bajt']['apache_webapps'] = "set to string to clear hash"
#override['bajt']['apache_webapps'] = "junk to reset hash"


puts "*** RUNNING bundle-apache-java-tomcat-example webapps.rb"

default['bajt']['apache_webapps'] = "set to string to clear hash"

override['bajt']['apache_webapps'] =
						{
						  "apache1" => { "name" => "apache1",
									  "server_name" => "apache1.com",
									  "server_name_aliases" => ["my.apache1.com"],
									  "template" => 'webapp.conf.erb',
									  "src_url" => 'http://10.0.2.2:81/website2.zip'
									}
					   }

  		
puts " "
puts "*** bundle-apache-java-tomcat-example webapps ***"
node['bajt']['apache_webapps'].keys.each do |group1|
  node['bajt']['apache_webapps'][group1].keys.each do |group2|
      apache_webapps = node['bajt']['apache_webapps'][group1]
		if ( (! node['bajt']['apache_webapps'][group1][group2].nil?) && (node['bajt']['apache_webapps'][group1][group2].kind_of?(String)) )
			puts ">#{group1}< >#{group2}<  -  " + node['bajt']['apache_webapps'][group1][group2] + "<"
			puts "=" + apache_webapps[group2] + "="
		end
  end
end

