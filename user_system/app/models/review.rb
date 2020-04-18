class Review < ApplicationRecord

  belongs_to :user

  def create params
    data = review_parameters(params)
    puts("---------->", data)
    validate_review data
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

  def validate_review data
    invoker = Invoker.new
    invoker.check_charecter_limit = SimpleCheck.new(data)

    receiver = Receiver.new
    invoker.check_abuses = ProfanityCheck.new(receiver, data['text'])

    invoker.perform_validation
  end

end
