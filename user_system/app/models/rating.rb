class Rating < ApplicationRecord


  def index
    ratings = Rating.all.as_json(only: [:id, :user_id, :item_id, :rating])
    ratings = construct_details ratings

    return {ratings: ratings}
  end
  
  def create params
    rating = Rating.create(rating_parameters(params))
    message = {message: 'Rating created successfully'}
    return [true, message]
  end


  def update params
    rating = Rating.find( params[:id] )
    rating.update_attributes( params.require(:user).permit([:rating]) )
    message = {message: 'Rating updated successfully'}
    return [true, message]
  end

private
  def rating_parameters(params)
    params.require(:user).permit([:user_id, :item_id, :rating])
  end

  def construct_details ratings
    components = [UserComponent.new, ItemComponent.new]

    rating_visitor = RatingVisitor.new
    components.each do |component|
      ratings = component.accept(rating_visitor, ratings)
    end
    return ratings  

  end

end
