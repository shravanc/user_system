class UsersController < ApplicationController
  before_action :validate_session, only: [:update]
  before_action :validate_username, only: :forgot_password


  def index
    logger.warn params
    render json: {users: User.all.as_json}
  end

  def create
    user = User.new
    status, data = user.create(params)
    if status
      render json: data, status: :created
    else
      render json: data, status: :unprocessable_entity
    end
  end

  def update
    user = User.new
    status, data = user.update(params)
    if status
      render json: data, status: :ok
    else
      render json: data, status: :unprocessable_entity
    end
  end

  def forgot_password
    user = params[:user]
    status, data = user.forgot_password(params)
    if status
      render json: data, status: :ok
    else
      render json: data, status: :unprocessable_entity
    end
  end

  def confirmation
    status, data = User.new.confirmation(params)
    if status
      render json: data, status: :ok
    else
      render json: data, status: :unprocessable_entity
    end
  end

  def set_password
    status, data = User.new.set_password(params)
    if status
      render json: data, status: :ok
    else
      render json: data, status: :unprocessable_entity
    end
  end

end
