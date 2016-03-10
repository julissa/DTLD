class Character < ActiveRecord::Base
  belongs_to :story
  validates :story_id, presence: true
  validates :character_name, presence: true
  validates_format_of :death, :with => /\A^yes$|^no$\z/, presence: true
  validates :description, presence: true
end
