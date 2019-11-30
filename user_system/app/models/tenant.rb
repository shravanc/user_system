class Tenant < ApplicationRecord

validates :subdomain, presence: true, uniqueness: true
after_create :create_subdomain
before_destroy :destroy_subdomain

def create params
  tenant = Tenant.new(params.require(:tenant).permit([:title, :subdomain]))
  tenant.save

  if tenant.valid?
     message = { message: 'Tenant created succesfully', data: tenant.id}
  else

    message = {message: 'Invalid'}
  end
  return [ true, message ]
end


private

def create_subdomain
  Rails.logger.warn self.subdomain
  Apartment::Tenant.create(self.subdomain)
end

def destroy_subdomain
  Apartment::Tenant.drop(self.subdomain)
end

end
