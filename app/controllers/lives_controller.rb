class LivesController < ApplicationController
  # GET /lives
  # GET /lives.json
  def index
    @lives = Live.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lives }
    end
  end

  # GET /lives/1
  # GET /lives/1.json
  def show
    @life = Live.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @life }
    end
  end

  # GET /lives/new
  # GET /lives/new.json
  def new
    @life = Live.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @life }
    end
  end

  # GET /lives/1/edit
  def edit
    @life = Live.find(params[:id])
  end

  # POST /lives
  # POST /lives.json
  def create
    @life = Live.new(params[:life])

    respond_to do |format|
      if @life.save
        format.html { redirect_to @life, notice: 'Live was successfully created.' }
        format.json { render json: @life, status: :created, location: @life }
      else
        format.html { render action: "new" }
        format.json { render json: @life.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lives/1
  # PUT /lives/1.json
  def update
    @life = Live.find(params[:id])

    respond_to do |format|
      if @life.update_attributes(params[:life])
        format.html { redirect_to @life, notice: 'Live was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @life.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lives/1
  # DELETE /lives/1.json
  def destroy
    @life = Live.find(params[:id])
    @life.destroy

    respond_to do |format|
      format.html { redirect_to lives_url }
      format.json { head :no_content }
    end
  end
end
