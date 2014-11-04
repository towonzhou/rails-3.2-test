# -*- encoding: UTF-8 -*-
##############################################################
# File Name: people_test.rb
# Author: zhouhuan
# mail: towonzhou@gmail.com
# Created Time: 二 11/ 4 21:35:44 2014
##############################################################

require 'minitest/autorun'
require './people'

class TestPeople < Minitest::Test
  def setup
    @people = People.new
  end

  def test_name_is_towonzhou
    assert_equal "towonzhou", @people.name
  end
end
