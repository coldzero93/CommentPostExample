class CommentController < ApplicationController
  def create
    post = Post.find(params[:id])
    post.comments.create(text: params[:input_comment])
    
    redirect_to :back
  end
  
  def delete
    Comment.find(params[:id]).destroy
    
    redirect_to :back
  end
end
