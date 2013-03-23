#
# Cookbook Name:: base_packages
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{mosh sysstat gcc-c++ patch readline-devel zlib-devel libyaml-devel
  openssl-devel ImageMagick-devel yum-cron yum-fastestmirror
  libxml2-devel libxslt-devel pcre-devel}.each do |pkg|
  package pkg do
    action :install
  end
 end
