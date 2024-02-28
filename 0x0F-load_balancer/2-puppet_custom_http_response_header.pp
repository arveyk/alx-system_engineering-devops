# puppet manifest to install and config nginx
class {'nginx'}
class:
 -nginx:: snippet
 nginx:: snippet:
conf: | 
	location = nginx_404 {
	  internal;
	  add_header Content-Type text/javascript;
	}
