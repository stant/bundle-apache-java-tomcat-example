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
    <td>see: <a href="https://github.com/stant/bundle-apache-java-tomcat-example">bundle-apache-java-tomcat</a></td>
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

## License and Authors

Author:: Stan Towianski (stashu.pub@gmail.com)
