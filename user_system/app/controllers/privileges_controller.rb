class PrivilegesController < ApplicationController

    def index
      render json: {privileges: Privilege.all.as_json}
    end

    def create
      privilege = Privilege.new
      status, data = privilege.create(params)
      if status
        render json: data, status: :created
      else
        render json: data, status: :unprocessable_entity
      end
    end

    def update
      privilege = Privilege.new
      status, data = privilege.create(params)
      if status
        render json: data, status: :created
      else
        render json: data, status: :unprocessable_entity
      end
    end

  end