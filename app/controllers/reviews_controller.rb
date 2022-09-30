class ReviewsController < ApplicationController

  def index
    reviews = Review.all.order(rating: :desc)
    render json: reviews.limit(3), include: :dog_house
  end

end
