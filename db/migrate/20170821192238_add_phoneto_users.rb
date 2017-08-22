class AddPhonetoUsers < ActiveRecord::Migration
  def change
    add_column :users, :phone, :integer, limit: 10
  end
end
