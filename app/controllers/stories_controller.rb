class StoriesController < ApplicationController

  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
  end

  protected

  def stories_params
    params.require(:story).permit!
  end

end
