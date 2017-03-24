class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to animals_index_path
    else
      render :new
    end
  end

  def new
    @animal = Animal.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :scientific_name, :age, :photo_url)
  end
end
