class RenameMediatoStory < ActiveRecord::Migration
  def change
    rename_table :media, :stories
  end
end
