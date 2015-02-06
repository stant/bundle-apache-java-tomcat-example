
puts "*** RUNNING bundle-apache-java-tomcat-example default.rb"

# Reload bundle-apache-java-jboss::default attributes to reset var's depending on apache_docroot value
node.from_file(run_context.resolve_attribute( "bundle-apache-java-tomcat", "default" ) )

