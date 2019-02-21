class FavoritesController < ApplicationController
  before_action :set_facility, only: [:create, :destroy]


  def create
    @favorite = Favorite.create(user_id: current_user.id, facility_id: params[:facility_id])
    @favorites = Favorite.where(facility_id: params[:facility_id])
    @facility.reload
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, facility_id: params[:facility_id])
    favorite.destroy
    @favorites = Favorite.where(facility_id: params[:facility_id])
    @facility.reload
  end

  private

  def set_facility
    @facility = Facility.find(params[:facility_id])
  end

end
