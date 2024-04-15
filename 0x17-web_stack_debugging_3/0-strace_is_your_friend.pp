# Script to create an index.html file with some text
file { '/var/www/html/index.html':
  ensure  => 'present',
  content => 'Just another WordPress site</title>\n
	<link rel="alternate" type="application/rss+xml" title="Holberton &raquo; Feed" href="http://127.0.0.1/?feed=rss2" />\n
	<link rel="alternate" type="application/rss+xml" title="Holberton &raquo; Comments Feed" href="http://127.0.0.1/?feed=comments-rss2" />\n
        <div id="wp-custom-header" class="wp-custom-header"><img src="http://127.0.0.1/wp-content/themes/twentyseventeen/assets/images/header.jpg" width="2000" height="1200" alt="Holberton" /></div>  </div>\n
                            <h1 class="site-title"><a href="http://127.0.0.1/" rel="home">Holberton</a></h1>\n
        <p>Yet another bug by a Holberton student</p>\n
	'
  mode    => '0644'

}
