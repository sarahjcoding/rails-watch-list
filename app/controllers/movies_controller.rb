class MoviesController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @movie = Movie.new(movie_params)
    @movie.restaurant = @movie
    if @movie.save
      redirect_to list_path(@list)
    else
      render 'lists/show', status: :unprocessable_entity
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:rating, :content)
  end
end
