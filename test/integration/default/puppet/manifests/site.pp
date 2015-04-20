class { 'bash':
}
bash::timeout { 'root':
  user_home => "/root",
  timeout   => '60'
}
