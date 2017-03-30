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
end
