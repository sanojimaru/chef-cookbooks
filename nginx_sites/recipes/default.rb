#
# Cookbook Name:: nginx_sites
# Recipe:: default
#
# Copyright 2013, Hirohide Sano <sanojimaru@gmail.com>
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'nginx'

node['nginx_sites']['sites'].each do |site|
  template "#{site['name']}.conf" do
    path "#{node['nginx']['dir']}/conf.d/#{site['name']}.conf"
    source "#{site['type']}.conf.erb"
    variables :site => site
    action :create
  end

  directory site['dir'] do
    owner node['nginx']['user']
    group node['nginx']['group']
    mode 0755
    action :create

    if_not{ File.exists? site['dir'] }
  end
end

service 'nginx' do
  supports :status => true, :restart => true, :reload => true
  action :start
end
