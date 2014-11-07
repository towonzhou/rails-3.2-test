class AddDecForPeople < ActiveRecord::Migration
  def change
    add_column :people, :dec, :text
  end
end
