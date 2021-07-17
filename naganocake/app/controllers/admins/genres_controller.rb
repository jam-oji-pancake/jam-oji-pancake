class Admins::GenresController < ApplicationController

  def index
    @genres = Genre.all
    @newgenre = Genre.new
  end

  # def new
  #   @genre = Genre.new
  # end

  def create
    genre = Genre.new(genre_params)
    genre.save
    redirect_to request.referer
  end

  def edit
  end

  def update
    @genre.update(genre_params)
    redirect_to request.referer

  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

end
