class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    animal = Animal.create(strong_params)
    if animal.id
      redirect_to animals_path
    end
  end

  private

  def strong_params
    params.require(:animal).permit(:name, :species, :age)
  end
end
