class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def show
    @result_animal = Animal.find(params[:id])
  end

  def create
    animal = Animal.create animal_params
  end

end
