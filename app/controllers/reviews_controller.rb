class ReviewsController < ApplicationController
  # We need to find the restaurant associated with the review
  before_action :set_restaurant, only: %i[new create]

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build
  end


  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new(restaurant: @restaurant)
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
