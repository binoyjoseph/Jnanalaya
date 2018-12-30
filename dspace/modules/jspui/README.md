Nithyananda Jnanalaya by HDH Sri Paramahamsa Nithyananda

jspui

How-to customize jspui

https://www.slideshare.net/DuraSpace/2514-dspace-user-interface-innovation-presentation-slides
slide 29 onwards

Code
====
layout/header-default.jsp
 * brand, top-left image - nhu-logo-header.png
 * buttons for user, login, search and menu - when window is small, ie. when viewed on a mobile
 * Kailaasa Nithyananda Library big heading
 * menu buttons for search, browse, about, help and login when window is big
 * these buttons disappear when window is small

home.jsp (main page and contents)
 * Kailaasa Nithyananda Library Intro
 * Make a deposit, submit a book

layout/footer-default.jsp
 * site map
 * footer, bottom-left image - nhu-logo-footer.png

static/css/bootstrap/ecommons.css

resources/Messages.properties

config/jnanalaya/*
 * containts about.html, founder.html and other Project html files
 * These will be installed in <DSpace_installation_directory>/dspace/config/jnanalaya
    and can be edited from here in deployment


Build and Install
=================
$ git clone https://<github_username>@github.com/binoyme/Jnanalaya.git
$ cd Jnanalaya/
$ git checkout jnanalaya-6_x
$ vi dspace/config/local.cfg
	# dspace.dir=/home/ec2-user/dspace
	# dspace.hostname = 35.165.39.19
	# dspace.baseUrl = http://35.165.39.19:8080
	# dspace.ui = jspui
	# dspace.name = Kailaasa Nithyananda Library
$ mvn package
$ cd dspace/target/dspace-installer
$ ant clean_backups update
$ /home/ec2-user/apache-tomcat-7.0.92/bin/catalina.sh stop
$ rm -rf /home/ec2-user/apache-tomcat-7.0.92/webapps/jspui
$ cp -r /home/ec2-user/dspace/webapps/jspui /home/ec2-user/apache-tomcat-7.0.92/webapps
$ /home/ec2-user/apache-tomcat-7.0.92/bin/catalina.sh start