class ReviewsController < ApplicationController


  def create
    review = Review.new
    status, data = review.create(params)
    if status
      render json: data, status: :created
    else
      render json: data, status: :unprocessable_entity
    end
  end

  def update
  end

  def index
    render json: {reviews: Review.all.as_json}
  end
end
