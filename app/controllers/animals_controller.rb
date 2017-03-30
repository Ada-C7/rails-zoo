class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def show
    @show_animal = Animal.find(params[:id])
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

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :age)
  end

end
