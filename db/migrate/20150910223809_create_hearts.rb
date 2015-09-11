class CreateHearts < ActiveRecord::Migration
  def change
    create_table :hearts do |t|

      t.timestamps null: false
    end
  end
end
