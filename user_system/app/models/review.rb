class Review < ApplicationRecord

  belongs_to :user

  def create params
    review = Review.create(review_parameters(params))
    message = { message: 'Review created succesfully'}
    return [ true, message ]
  end

  def index params
    { reviews: Review.all.as_json(only: [:id, :item_id, :user_id, :text]) }
  end




private

  def review_parameters params
    params.require(:review).permit([:user_id, :item_id, :text])
  end

end
