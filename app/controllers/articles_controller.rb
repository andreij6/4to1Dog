class ArticlesController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update]
  
  # GET /blogs
  # GET /blogs.json
  def index
    if params[:tag]
      @articles = Article.tagged_with(params[:tag])#.page(params[:page]).per_page(5)
    else
      @articles = Article.all
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articles }
    end
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @article = Article.find(params[:id])
    @commentable = @article
    @comments = @commentable.comments
    @comment = Comment.new
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @articles }
    end
  end

  # GET /blogs/new
  # GET /blogs/new.json
  def new
    @article = current_user.articles.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @articles }
    end
  end

  # GET /blogs/1/edit
  def edit
    @articles = current_user.articles.find(params[:id])
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @article = current_user.articles.new(params[:article])

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render json: @article, status: :created, location: @article }
      else
        format.html { render action: "new" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blogs/1
  # PUT /blogs/1.json
  def update
    @article = current_user.articles.find(params[:id])
    if params[:article]&&params[:article].has_key?(:user_id)
      params[:status].delete(:user_id)
    end
    respond_to do |format|
      if @aricle.update_attributes(params[:article])
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @article = current_user.articles.find(params[:id])
    @article.destroy

    respond_to do |format|
      format.html { redirect_to articles_url }
      format.json { head :no_content }
    end
  end
end
