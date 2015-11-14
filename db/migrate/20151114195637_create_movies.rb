class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.text :synopsis, null: false
      t.integer :year, null: false
      t.string :lesbian_death, null:false
    end
  end
end
