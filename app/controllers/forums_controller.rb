class ForumsController < ApplicationController    
  load_and_authorize_resource
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update]
  
  def index
    
    @search = Forum.search(params[:q])
    @forum = @search.result
  end
  
  def show
    @forum = Forum.find(params[:id])
  end
  
  def new
    @forum = Forum.new
  end
  
  def create
    @forum = Forum.new(params[:forum])
    
    if @forum.save
      flash[:notice] = "Forum was successfully created."
      redirect_to forums_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @forum = Forum.find(params[:id])
  end
  
  def update
    @forum = Forum.find(params[:id])
    
    if @forum.update_attributes(params[:forum])
      flash[:notice] = "Forum was updated successfully."
      redirect_to forum_url(@forum)
    end
  end
  
  def destroy
    @forum = Forum.find(params[:id])
    
    if @forum.destroy
      flash[:notice] = "Category was deleted."
      redirect_to forums_url
    end
  end
  
end