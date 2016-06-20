#
# Author:: Nathan L Smith (nlloyds@gmail.com)
# Author:: Marius Ducea (marius@promethost.com)
# Cookbook Name:: nodejs
# Recipe:: package
#
# Copyright 2012, Cramer Development, Inc.
# Copyright 2013, Opscale
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

node.force_override['opscore']['nodejs']['install_method'] = 'package' # ~FC019

include_recipe 'opscore::nodejs_repo' if node['opscore']['nodejs']['install_repo']


unless node['opscore']['nodejs']['packages']
  Chef::Log.error 'No package for nodejs'
  Chef::Log.warn 'Please use the source or binary method to install node'
  return
end

node['opscore']['nodejs']['packages'].each do |node_pkg|
  package node_pkg
end