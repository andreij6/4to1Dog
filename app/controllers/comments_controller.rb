class CommentsController < ApplicationController
 before_filter :authenticate_user!, only: [:new, :create, :edit, :update]
 before_filter :load_commentable
 load_and_authorize_resource
 
  def index
    
    @comments = @commentable.comments
  end

  def new
    @comment = @commentable.comments.new 
    @comment.user = current_user
  end
  
   def create
    @comment = @commentable.comments.new(params[:comment])
    @comment.user = current_user
    
    if @comment.save
      redirect_to @commentable, notice: "Comment created."
    else
      render :new
    end
  end
  
private
  def load_commentable
    resource, id = request.path.split('/')[1,2]
    @commentable = resource.singularize.classify.constantize.find(id)
  end
end
