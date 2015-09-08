class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.string :category
      t.string :remark
      t.boolean :want_to_sell

      t.timestamps null: false
    end
  end
end
