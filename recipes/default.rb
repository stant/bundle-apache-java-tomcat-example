#
# Cookbook Name:: bundle-apache-java-tomcat-example
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved 
#

puts ""
puts "ZZZ bundle pre webapp__apache_docroot =" + "#{node['bajt']['apache']['docroot']}" + "="
puts "ZZZ bundle pre webapp_________docroot =" + "#{node['bajt']['apache']['docroot']}" + "="
puts ""

include_recipe "bundle-apache-java-tomcat::default"

puts ""
puts "ZZZ bundle post webapp__apache_docroot =" + "#{node['bajt']['apache']['docroot']}" + "="
puts "ZZZ bundle post webapp_________docroot =" + "#{node['bajt']['apache']['docroot']}" + "="
puts ""

