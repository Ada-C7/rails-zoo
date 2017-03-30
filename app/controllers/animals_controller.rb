class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def show
    @show_animal = Animal.find(params[:id])
  end
end
