class Story < ActiveRecord::Base
  has_many :characters
  validates :title, presence: true
  validates :synopsis, presence: true
  validates :year, presence: true, format: {with: /(19|20)\d{2}/i }

  def self.search(search)
    if search
      where("title ilike ?", "%#{search}%")
    else
      find(:all)
    end
  end
end
