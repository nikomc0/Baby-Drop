class AddFacilityToUsers < ActiveRecord::Migration
  def change
    add_column :users, :facility, :string
  end
end
