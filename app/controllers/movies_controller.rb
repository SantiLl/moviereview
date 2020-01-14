class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
    puts @movie
  end

  def create
    @user = current_user
    puts @user
    @movie = @user.movies.create(movie_params)

    redirect_to movies_path
  end

  def edit
  end

  def update
    puts "Updating movies"
    @movie.update(movie_params)
    redirect_to movies_path
  end

  def destroy
    @movie.destroy
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
    puts @movie
  end

  def movie_params
    params.require(:movie).permit(:title, :description)
  end
end
