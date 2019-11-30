class PurchasesController < ApplicationController
def index
  render json: Purchase.all.as_json(include: [:privileges])
end

def create
  purchase = Purchase.new
  status, data = purchase.create(params)
  if status
    render json: data, status: :created
  else
    render json: data, status: :unprocessable_entity
  end
end

def update
  purchase = Purchase.new
  status, data = purchase.create(params)
  if status
    render json: data, status: :created
  else
    render json: data, status: :unprocessable_entity
  end
end

end
