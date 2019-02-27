class FacilitiesController < ApplicationController
  def index
    @facilities = Facility.page(params[:page]).per(5)
    @q = @facilities.ransack(params[:q])
    @facilities = @q.result(distinct: true)
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
    @facility = Facility.find(params[:id])
  end

  def update
    facility = Facility.find(params[:id])
    facility.update!(facility_params)
    redirect_to facilities_url, notice: "施設を更新しました。"
  end

  def destroy
    facility = Facility.find(params[:id])
    facility.destroy
    redirect_to facilities_url, notice: "施設#{facility.name}を削除しました。"
  end



  private

  def facility_params
    params.require(:facility).
    permit(:name, :description, :address, :image)
    # ストロングパラメーター
    # その他のパラメーターはあとで追加する
  end
end
