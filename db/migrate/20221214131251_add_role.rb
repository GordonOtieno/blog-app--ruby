class AddRole < ActiveRecord::Migration[7.0]
  def self.up
    add_column :users, :role, :string
  end
end
