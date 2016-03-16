class PagesController < ApplicationController
  def show
    render template: "pages/#{params[:page]}"
  end

  def index
    @stories = Story.search(params[:search])
  end
end
