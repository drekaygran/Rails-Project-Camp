# frozen_string_literal: true

class CampersController < ApplicationController
  before_action :set_camper, only: %i[show update destroy]

  # GET /campers
  def index
    @campers = Camper.all

    render json: @campers
  end

  # GET /campers/1
  def show
    render json: @camper
  end

  # POST /campers
  def create
    @camper = Camper.new(camper_params)

    if @camper.save
      render json: @camper, status: :created, location: @camper
    else
      render json: @camper.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campers/1
  def update
    if @camper.update(camper_params)
      render json: @camper
    else
      render json: @camper.errors, status: :unprocessable_entity
    end
  end

  # DELETE /campers/1
  def destroy
    @camper.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_camper
    @camper = Camper.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def camper_params
    params.require(:camper).permit(:first_name,
                                   :last_name,
                                   :allergies,
                                   :dob,
                                   :camp_session,
                                   :parent_name,
                                   :parent_email,
                                   :parent_phone)
  end
end
