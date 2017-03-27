class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    animal = Animal.create animal_params

    unless animal.id == nil
      redirect_to animals_path
    end
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
