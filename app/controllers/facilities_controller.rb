class FacilitiesController < ApplicationController
  def index
    @facilities = Facility.all
  end

  def show
    @facility = Facility.find(params[:id])
  end

  def new
    @facility = Facility.new
  end

  def create
    @facility = Facility.new(facility_params)
    if @facility.save
      redirect_to facilities_url, notice: "施設を登録しました。"
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def facility_params
    params.require(:facility).
    permit(:name, :description, :address)
    # ストロングパラメーター
    # その他のパラメーターはあとで追加する
  end
end
