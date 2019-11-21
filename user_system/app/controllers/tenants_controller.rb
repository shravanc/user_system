class TenantsController < ApplicationController

def create
  tenant = Tenant.new
  status, data = tenant.create(params)
  if status
    render json: data, status: :created
  else
    render json: data, status: :untenantrocessable_entity
  end
end

def destroy
  Tenant.find_by(subdomain: params[:subdomain]).destroy
  render json: {}, status: :ok
end

end
