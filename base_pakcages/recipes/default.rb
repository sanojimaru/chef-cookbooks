#
# Cookbook Name:: base_pakcages
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{sysstat mosh}.each do |pkg|
  package pkg do
    action :install
  end
 end
