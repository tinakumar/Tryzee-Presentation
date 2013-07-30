class ListingsController < ApplicationController
  # GET /listings
  # GET /listings.json
  def index
    @search = params[:search]
    @listings = Listing.search(@search)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @listings }
    end
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
    @listing = Listing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @listing }
    end
  end

  # GET /listings/new
  # GET /listings/new.json
  def new
    @listing = Listing.new
    model = Model.find_by_id(params[:model_id])
    @listing.model_id = model.id
    @listing.photo_url = model.photo_url
    @listing.manufacturer_id = model.manufacturer_id
    @listing.category_id = model.category_id
  end
  # GET /listings/1/edit
  def edit
    @listing = Listing.find(params[:id])
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new
    @listing.model_id = params[:model_id]
    @listing.photo_url = params[:photo_url]

    @listing.category_id = params[:category_id]

    if @listing.save
            redirect_to listings_url
          else
      render 'new'
    end
  end

  # PUT /listings/1
  # PUT /listings/1.json
  def update
    @listing = Listing.find_by_id(params[:id])
    @listing.model_id = params[:model_id]
    @listing.photo_url = params[:photo_url]
    @listing.description = params[:description]
    @listing.category_id = params[:category_id]

    if @listing.save
            redirect_to listings_url
          else
      render 'edit'
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
      redirect_to listings_url

    respond_to do |format|
      format.html { redirect_to listings_url }
      format.json { head :no_content }
    end
  end
end
