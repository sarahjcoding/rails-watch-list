class MoviesController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @movie = Movie.new
  end

  def create
    @list = List.find(params[:list_id])
    @movie = Movie.new(movie_params)
    @movie.list = @list
    if @movie.save
      redirect_to list_path(@list)
    else
      render 'lists/show', status: :unprocessable_entity
    end


  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :rating)
  end
end
