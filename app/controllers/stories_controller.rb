class StoriesController < ApplicationController

  def index
    if params[:search]
      @stories = Story.search(params[:search])
    else
      @stories = Story.all
    end
  end

  def show
    @story = Story.find(params[:id])
    @characters = @story.characters
  end

  protected

  def stories_params
    params.require(:story).permit!
  end

end
