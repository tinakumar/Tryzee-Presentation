class TryalsController < ApplicationController
  # GET /tryals
  # GET /tryals.json
  def index
    @tryals = Tryal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tryals }
    end
  end

  # GET /tryals/1
  # GET /tryals/1.json
  def show
    @tryal = Tryal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tryal }
    end
  end

  # GET /tryals/new
  # GET /tryals/new.json
  def new
    @tryal = Tryal.new
    listing_id = params[:listing_id]
    user_id = params[:user_id]
    lender_id = params[:lender_id]
    @tryal.listing_id = listing_id
    @tryal.user_id = user_id
    @tryal.lender_id = lender_id
  end

  # GET /tryals/1/edit
  def edit
    @tryal = Tryal.find(params[:id])
  end

  # POST /tryals
  # POST /tryals.json
  def create
    @tryal = Tryal.new(params[:tryal])

    respond_to do |format|
      if @tryal.save
        format.html { redirect_to @tryal, notice: 'Tryal was successfully created.' }
        format.json { render json: @tryal, status: :created, location: @tryal }
      else
        format.html { render action: "new" }
        format.json { render json: @tryal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tryals/1
  # PUT /tryals/1.json
  def update
    @tryal = Tryal.find(params[:id])

    respond_to do |format|
      if @tryal.update_attributes(params[:tryal])
        format.html { redirect_to @tryal, notice: 'Tryal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tryal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tryals/1
  # DELETE /tryals/1.json
  def destroy
    @tryal = Tryal.find(params[:id])
    @tryal.destroy

    respond_to do |format|
      format.html { redirect_to tryals_url }
      format.json { head :no_content }
    end
  end
end
