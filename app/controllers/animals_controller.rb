class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to animals_path
    else
      render :new
    end
  end

  def new
    @animal = Animal.new
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update(animal_params)
      redirect_to animal_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    @animal = Animal.find(params[:id]).destroy

    redirect_to animals_path
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :scientific_name, :age, :photo_url)
  end
end
