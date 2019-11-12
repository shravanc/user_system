class RolesController < ApplicationController

    def index
      render json: Role.all.as_json(include: [:privileges])
    end

    def create
      role = Role.new
      status, data = role.create(params)
      if status
        render json: data, status: :created
      else
        render json: data, status: :unprocessable_entity
      end
    end

    def update
      role = Role.new
      status, data = role.create(params)
      if status
        render json: data, status: :created
      else
        render json: data, status: :unprocessable_entity
      end
    end

  end