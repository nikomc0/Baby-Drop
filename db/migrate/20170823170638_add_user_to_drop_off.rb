class AddUserToDropOff < ActiveRecord::Migration
  def change
    add_column :drop_offs, :user_id, :integer
    add_index :drop_offs, :user_id
  end
end
