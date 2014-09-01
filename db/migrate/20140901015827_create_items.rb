class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name
      t.decimal :price

      t.timestamps
    end
  end
end
