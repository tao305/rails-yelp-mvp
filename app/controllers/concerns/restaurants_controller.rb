class RestaurantsController < ApplicationController
  # Add chef to the list of actions below
  before_action :set_restaurant, only: %i[show edit update destroy chef]

  def index
    @restaurants = Restaurant.all
  end

  def chef
    @chef_name = @restaurant.chef_name
  end
end
