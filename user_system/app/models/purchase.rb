class Purchase < ApplicationRecord

belongs_to :user

def index
  { purchases: Purchase.all.as_json(only: layouts_attributes ) } 
end

def create params
  purchase = Purchase.new(params[:layout].as_json)
  purchase.save

  message = { message: 'purchase created succesfully'}
  return [ true, message ] 

end

private
def purchase_attributes
  [:id, :title]
end

end
