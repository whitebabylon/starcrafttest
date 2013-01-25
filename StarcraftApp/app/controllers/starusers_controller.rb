class StarusersController < ApplicationController
  # GET /starusers
  # GET /starusers.json
  def index
    @starusers = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @starusers }
    end
  end

  # GET /starusers/1
  # GET /starusers/1.json
  def show
    @staruser = Staruser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @staruser }
    end
  end

  # GET /starusers/new
  # GET /starusers/new.json
  def new
    @staruser = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @staruser }
    end
  end

  # GET /starusers/1/edit
  def edit
    @staruser = Staruser.find(params[:id])
  end

  # POST /starusers
  # POST /starusers.json
  def create
    @staruser = Staruser.new(params[:staruser])

    respond_to do |format|
      if @staruser.save
        format.html { redirect_to @staruser, notice: 'Staruser was successfully created.' }
        format.json { render json: @staruser, status: :created, location: @staruser }
      else
        format.html { render action: "new" }
        format.json { render json: @staruser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /starusers/1
  # PUT /starusers/1.json
  def update
    @staruser = Staruser.find(params[:id])

    respond_to do |format|
      if @staruser.update_attributes(params[:staruser])
        format.html { redirect_to @staruser, notice: 'Staruser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @staruser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /starusers/1
  # DELETE /starusers/1.json
  def destroy
    @staruser = Staruser.find(params[:id])
    @staruser.destroy

    respond_to do |format|
      format.html { redirect_to starusers_url }
      format.json { head :no_content }
    end
  end
end
