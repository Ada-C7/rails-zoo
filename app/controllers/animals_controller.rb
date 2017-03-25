class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    id = params[:id].to_i
    @animal = Animal.find(id)
  end


end
