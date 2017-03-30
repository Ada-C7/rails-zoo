class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end
  def show
    @task = Task.find(params[:id])
  end
end
