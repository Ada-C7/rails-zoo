class AnimalsController < ApplicationController

  def index
    puts '>>>>>>amb<<<<<<<<: Inside animals#index'
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    Animal.create(animal_params)
    redirect_to animals_path
  end

  def show
    @animal = Animal.find(params[:id])
  end

  #### PRIVATE
  private
  def animal_params
    params.require(:animal).permit(:name, :species, :age)
  end

end
