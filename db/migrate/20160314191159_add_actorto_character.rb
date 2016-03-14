class AddActortoCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :actor, :text, null: true
  end
end
