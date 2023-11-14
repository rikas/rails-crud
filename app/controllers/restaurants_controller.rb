class RestaurantsController < ApplicationController
  # after_action
  # around_action

  # before filter
  before_action :set_restaurant, only: %i[show edit update destroy]

  def index
    @restaurants = Restaurant.all
  end

  # GET /restaraunts/:id
  def show
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to root_path
  end

  # GET /restaurants/:id/edit
  def edit
  end

  # PATCH /restaurants/:id
  def update
    @restaurant.update(restaurant_params)

    redirect_to root_path
  end

  # DELETE /restaurants/:id
  def destroy
    @restaurant.destroy

    redirect_to root_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :rating, :address)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
