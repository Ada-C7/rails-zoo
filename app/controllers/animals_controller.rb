class AnimalsController < ApplicationController
  def new
    @animal = Animal.new
  end

  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def create
    animal = Animal.new(params[:animal])
    animal.save
    redirect_to animals_path
  end
end
