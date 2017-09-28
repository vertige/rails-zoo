class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find_by(id: params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(
    name: params[:animal][:name],
    species: params[:animal][:species],
    age: params[:animal][:age]
    )

    if @animal.save
      redirect_to root_path
    else
      render :new
    end
  end
end
