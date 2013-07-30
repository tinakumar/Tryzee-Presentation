class ManufacturersController < ApplicationController
  # GET /manufacturers
  # GET /manufacturers.json
  def index
    @manufacturers = Manufacturer.all
    name = Manufacturer.find_by_name(params[:name])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @manufacturers }
    end
  end

  # GET /manufacturers/1
  # GET /manufacturers/1.json
  def show
    @manufacturer = Manufacturer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @manufacturer }
    end
  end

  # GET /manufacturers/new
  # GET /manufacturers/new.json
  def new
    @manufacturer = Manufacturer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @manufacturer }
    end
  end

  # GET /manufacturers/1/edit
  def edit
    @manufacturer = Manufacturer.find(params[:id])
  end

  # POST /manufacturers
  # POST /manufacturers.json
   def create
    @manufacturer = Manufacturer.new
    @manufacturer.name = params[:name]
    @manufacturer.rebate = params[:rebate]
    @manufacturer.rebate_description = params[:rebate_description]

    if @manufacturer.save
            redirect_to manufacturers_url
          else
      render 'new'
    end
  end

  # PUT /manufacturers/1
  # PUT /manufacturers/1.json
  def update
    @manufacturer = Manufacturer.find_by_id(params[:id])
    @manufacturer.name = params[:name]
    @manufacturer.rebate = params[:rebate]
    @manufacturer.rebate_description = params[:rebate_description]

    if @manufacturer.save
            redirect_to manufacturers_url
          else
      render 'edit'
    end
  end

  # DELETE /manufacturers/1
  # DELETE /manufacturers/1.json
  def destroy
    @manufacturer = Manufacturer.find(params[:id])
    @manufacturer.destroy
      redirect_to manufacturers_url

    respond_to do |format|
      format.html { redirect_to manufacturers_url }
      format.json { head :no_content }
    end
  end
end
