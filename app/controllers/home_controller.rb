class HomeController < ApplicationController

  def index
      @facilities = Facility.page(params[:page]).per(5)
      @comments = Comment.page(params[:page]).per(5)
  end
  def contact
  end
end
