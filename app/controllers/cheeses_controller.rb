class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end
  
  def show
    # Find cheese using ID
    # byebug
    cheese = Cheese.find_by(id: params[:id])
    # send a JSON response using cheese object
    render json: cheese
  end

end
