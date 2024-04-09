nginx::resource::server { 'puppet':
  ensure	=> present,
  server_name	=> ['puppet'],
  listen_port	=> 80,
  location_cfg_append => {
  'rewrite' => '^ http://$server_name$request_uri? permanent'
}
