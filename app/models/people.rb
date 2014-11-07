class People < ActiveRecord::Base
  attr_accessible :age, :name, :dec

  searchable do
    text :dec
    integer :id
    string :name
  end
end
