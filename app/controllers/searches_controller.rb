class SearchesController < ApplicationController
  # GET /searches
  # GET /searches.json
  # GET /searches/1
  # GET /searches/1.json
  def new
    @search = Search.new

  end

  def create
    @search = Search.create!(params[:search])
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
    @products = Product.search(@search)
  end
end
  # GET /searches/new
  # GET /searches/new.json




  # POST /searches
  # POST /searches.json


  # PUT /searches/1
  # PUT /searches/1.json


