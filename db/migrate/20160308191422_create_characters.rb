class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :story_id
      t.string :character_name
      t.string :death
      t.text :description
    end
  end
end
