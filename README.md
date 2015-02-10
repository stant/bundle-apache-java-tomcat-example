# bundle-apache-java-tomcat-example-cookbook

The purpose here is to give an example of how to use the stant/bundle-apache-java-tomcat cookbook, which aims to be a simple way to set up a list of web sites.

## Supported Platforms

Chef supported linuxes.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>attributes for project stant/bundle-apache-java-tomcat</tt></td>
    <td>&nbsp;</td>
    <td>see: <a href="https://github.com/stant/bundle-apache-java-tomcat">bundle-apache-java-tomcat</a></td>
    <td><tt>The attributes below are from: stant/bundle-apache-java-tomcat</tt></td>
  </tr>
  <tr>
    <td><tt>['bajt']['apache']['create_demo_index_htmls']</tt></td>
    <td>Boolean</td>
    <td>If true, this will create simple ['bajt']['apache']['docroot']/index.html pages for each web site created.</td>
    <td><tt>false</tt></td>
  </tr>
  <tr>
    <td><tt>['bajt']['apache']['docroot']</tt></td>
    <td>String</td>
    <td>main root path to apache doc files.</td>
    <td><tt>/var/www</tt></td>
  </tr>
  <tr>
    <td><tt>attributes for project svanzoest/apache2-cookbook</tt></td>
    <td>&nbsp;</td>
    <td>see: <a href="https://github.com/svanzoest/apache2-cookbook">apache</a></td>
    <td><tt></tt></td>
  </tr>
  <tr>
    <td><tt>attributes for project agileorbit-cookbooks/java</tt></td>
    <td>&nbsp;</td>
    <td>see: <a href="https://github.com/agileorbit-cookbooks/java">java</a></td>
    <td><tt></tt></td>
  </tr>
  <tr>
    <td><tt>attributes for project opscode-cookbooks/tomcat</tt></td>
    <td>&nbsp;</td>
    <td>see: <a href="https://github.com/opscode-cookbooks/tomcat">tomcat</a></td>
    <td><tt></tt></td>
  </tr>
</table>

## Usage

### bundle-apache-java-tomcat-example::default

Include `bundle-apache-java-tomcat-example` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[bundle-apache-java-tomcat-example::default]"
  ]
}
```

### add to your hosts files

33.33.33.13   apache1.com

### fill out apache web site parameters in attributes/webapps.rb

```json
override['bajt']['apache_webapps'] =
						{
						  "apache1" => { "name" => "apache1",
									  "server_name" => "apache1.com",
									  "server_name_aliases" => ["my.apache1.com"],
									  "template" => 'webapp.conf.erb',
									  "src_url" => 'http://10.0.2.2:81/website2.zip'
									}
					   }
```

### kitchen converge will:

create 1 apache web site at the host name above.

## License and Authors

Author:: Stan Towianski (stashu.pub@gmail.com)
