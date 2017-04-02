class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def details
      @animal = Animal.find_by(name: params[:name])



  end
end
