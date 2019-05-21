class BookmarksController < ApplicationController
  before_action :authenticate_user!

   def create
    @bookmark = current_user.bookmarks.build(bookmark_params)
    if @bookmark.save
      @course = @bookmark.course
      @is_bookmarked = @bookmark
      redirect_to course_path(@course)
    else
      flash[:alert] = "Something went wrong ..."
    end
  end

   def destroy
    @bookmark = Bookmark.find(params[:id])
    @course = @bookmark.course
    if @bookmark.destroy
      redirect_to course_path(@course)
    else
      flash[:alert] = "Something went wrong ..."
    end
  end

   private
  def bookmark_params
    params.permit :user_id, :course_id
  end
end
