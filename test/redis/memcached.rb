# -*- encoding: UTF-8 -*-
##############################################################
# File Name: memcached.rb
# Author: zhouhuan
# mail: towonzhou@gmail.com
# Created Time: 五 11/ 7 10:00:25 2014
##############################################################

require 'dalli'

options = { :namespace => "test_memcached", :compress => true }
dc = Dalli::Client.new('localhost:11211', options)
dc.set('abc', 123)
value = dc.get('abc')
p value
p dc.methods
