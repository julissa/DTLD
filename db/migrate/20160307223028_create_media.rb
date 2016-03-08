class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :title, null: false
      t.text :synopsis, null: false
      t.integer :year, null: false
      t.string :media_format, null: false
    end
  end
end
