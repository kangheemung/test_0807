class PostsController < ApplicationController
  def index
      @post = Post.new
      @posts = Post.all
  end
  def show
      
  end
  def create
   @post = Post.new(
     title: params[:post][:title],
     content: params[:post][:content])
    
    if @post.save
       
       redirect_to'/'
       
    else
       render 'new'
    end
  def likes
   @post = User.find_by(id: params[:id])
     @likes = Like.where(post_id: @post.id)
  end
 
  end
end
