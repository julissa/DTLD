class StoriesController < ApplicationController

  def index
    if params[:search]
      @stories = Story.search(params[:search])
    elsif params[:media_format]
      @stories = Story.where(:media_format => params[:media_format]).order("title ASC")
    # else
    #   flash[:notice] = "There are no <b>stories</b> in this category".html_safe
    end
  end

  def show
    @story = Story.find(params[:id])
    # @characters = @story.characters
  end

  protected

  def story_params
    params.require(:story).permit!
  end

end
