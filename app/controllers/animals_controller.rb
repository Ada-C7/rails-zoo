class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    animal = Animal.find(params[:id])
    if animal.update(animal_params)
      redirect_to animals_path
    end  

  end

  def new

  end

  def create

  end

  private
  def animal_params
    params.require(:animal).permit(:name, :species, :age, :image_link)

  end





end
