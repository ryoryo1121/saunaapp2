class CommentsController < ApplicationController
   before_action :set_facility

def create
  @comment = Comment.create(comment_params)
  if @comment.save
    redirect_to facility_path(@facility.id), notice: "コメントを追加しました"
  else
    render "root_path"
  end
end

def destroy

  @comment = Comment.find(comment_params[:id])
  @comment.destroy
  redirect_to facility_url, notice: "コメントを削除しました"
end


private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, facility_id: @facility.id)
  end

  def set_facility
      @facility = Facility.find(params[:facility_id])
  end

end
