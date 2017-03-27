class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new

  end

  def show
    @animal = Animal.find params[:id]
  end

  def update
  end

  private
  def animal_params
    params.require(:animal).permit(:name, :species, :age)
  end

end
