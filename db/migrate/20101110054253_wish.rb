class Wish < ActiveRecord::Migration
  def self.up
	add_column :wishes, :user_id, :integer
  end

  def self.down
	remove_column :wishes, :user_id
  end
end
