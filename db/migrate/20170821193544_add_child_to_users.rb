class AddChildToUsers < ActiveRecord::Migration
  def change
    add_column :users, :child, :string
  end
end
