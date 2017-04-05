class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def show
    id = params[:id].to_i
    @animal = Animal.find(id)
  end

  def new
    @animal = Animal.new
  end

  def create
    puts ">>>> AMV: In AnimalsController#create"

    animal_data = animal_params
    puts animal_data.to_hash
    Animal.create(animal_data)

    redirect_to animals_path
  end

  private
    def animal_params
      return params.require(:animal).permit(:name, :species, :age)
    end

end
