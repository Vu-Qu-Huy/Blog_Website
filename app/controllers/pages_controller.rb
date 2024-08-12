class PagesController < ApplicationController
  def home
  end

  def about
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).order(created_at: :desc)
    @posts = if params[:tag_id]
               Tag.find(params[:tag_id]).posts
             else
               @q.result(distinct: true)
             end
    @posts = @posts.includes(:tags).order(created_at: :desc)
    @tags = Tag.all
  end
end
