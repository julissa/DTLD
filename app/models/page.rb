class Story < ActiveRecord::Base


  def search(search)
    if search
      Story.where("title ilike ?", "%#{search}%")
    end
  end

end
