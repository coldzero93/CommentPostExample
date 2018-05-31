class PostController < ApplicationController
  
  def index
    @posts = Post.page params[:page]
  end
  
  def create
    post = Post.new
    post.title = params[:input_title]
    post.content = params[:input_content]
    post.save
    
    redirect_to '/'
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    post = Post.find(params[:id])
    post.title = params[:input_title]
    post.content = params[:input_content]
    post.save
    
    redirect_to '/'
  end
  
  def delete
    Post.find(params[:id]).destroy
    
    redirect_to '/'
  end
  
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end
  
end
