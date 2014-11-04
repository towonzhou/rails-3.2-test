# -*- encoding: UTF-8 -*-
##############################################################
# File Name: people_spec.rb
# Author: zhouhuan
# mail: towonzhou@gmail.com
# Created Time: 二 11/ 4 22:22:13 2014
##############################################################

require 'minitest/autorun'
require './people'

describe People do
  before do
    @people = People.new
  end

  describe "#name" do
    it "returns the name of the people" do
      @people.name.must_equal "towonzhou"
    end
  end
end

