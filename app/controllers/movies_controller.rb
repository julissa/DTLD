class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end

  def index
    @movies = Move.all
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if movie.save
      respond_to do |format|
        format.html {redirect_to @movie, notice: 'Movie was successfully added'}
        format.js
      end
    else
      flash[:notice] = 'Required information missing'
      render :new
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  protected

  def movie_params
    params.require(:movie).permit!
  end

end
