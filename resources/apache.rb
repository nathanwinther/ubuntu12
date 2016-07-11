action :create do

  apt_package 'apache2' do
    action :install
  end

  service 'apache2' do
    action [:enable, :start]
  end

  execute 'mod_rewrite' do
    command 'a2enmod rewrite'
    notifies :restart, 'service[apache2]'
    action :run
  end

  execute 'mod_ssl' do
    command 'a2enmod ssl'
    notifies :restart, 'service[apache2]'
    action :run
  end

end

