class SessionsController < ApplicationController
    before_action :validate_username, only: :create
    before_action :validate_session, only: [:update_profile, :change_password]
    def create
      session = Session.new
      status, data = session.create(params)
      if status
        render json: data, status: :created
      else
        render json: data, status: :unprocessable_entity
      end
    end

    def update_profile
      user = User.new
      status, data = user.update(params)
      if status
        render json: data, status: :created
      else
        render json: data, status: :unprocessable_entity
      end
    end

    def change_password
      user = User.new
      status, data = user.update(params)
      if status
        render json: data, status: :created
      else
        render json: data, status: :unprocessable_entity
      end
    end

    def destroy
      session = Session.find_by_session_id(params[:id])
      session.destroy
      render json: {message: 'Session destroyed successfully'}, status: :ok
    end

    def list_ratings
      render json: Rating.new.index
    end

    def ratings
      rating = Rating.new
      status, data = rating.create(params)
      if status
        render json: data, status: :created
      else
        render json: data, status: :unprocessable_entity
      end
    end

    def update_ratings
      rating = Rating.new
      status, data = rating.update(params)
      if status
        render json: data, status: :created
      else
        render json: data, status: :unprocessable_entity
      end
    end

end
