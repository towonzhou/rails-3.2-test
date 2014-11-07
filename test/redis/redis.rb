# -*- encoding: UTF-8 -*-
##############################################################
# File Name: redis.rb
# Author: zhouhuan
# mail: towonzhou@gmail.com
# Created Time: 五 11/ 7 10:00:13 2014
##############################################################

require "redis"

redis = Redis.new
#redis = Redis.new(:host => "127.0.0.1", :port => 6379, :db => 15)
key = 'mykey'
redis.set(key, "hello world") #设置key的值为hello world
p redis.get(key) #获取key的值
p redis.keys #列出所有的key

require "json"
redis.set(key, [1,2,3].to_json) #可以存储对象
json = JSON.parse(redis.get key)
p json.class
p json

list_key = "list_key"
redis.lpush(list_key, "hello")
p redis.lrange(list_key, 0, -1) #获取list中的所有数据
p redis.llen(list_key) #获取list长度
p redis.lpop(list_key) #从左边取出一个数据

value = redis.get(key) rescue value = redis.get(key)
p value
