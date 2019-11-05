class UsersController < ApplicationController

def index 
  render json: {data: { users: User.last.as_json } }
end

end
