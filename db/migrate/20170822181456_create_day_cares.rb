class CreateDayCares < ActiveRecord::Migration
  def change
    create_table :day_cares do |t|

      t.timestamps null: false
    end
  end
end
