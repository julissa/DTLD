class PagesController < ApplicationController
  def show
    render template: "pages/#{params[:page]}"
  end

  def index
    @stories = Story.all
    if params[:search]
      @stories = Story.search(params[:search])
    else
      @stories = Post.all.order('created_at DESC')
    end
  end
end
