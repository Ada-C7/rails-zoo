class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animals = Animal.find(params[:id])
  end
end
