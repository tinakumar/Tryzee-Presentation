class PagesController < ApplicationController
  def home
    @manufacturers = Manufacturer.all
    @manufacturer_bugaboo = Manufacturer.find_by_name('Bugaboo')
    @manufacturer_bob = Manufacturer.find_by_name('BOB')
    @manufacturer_firstyears = Manufacturer.find_by_name('First Years')
    @manufacturer_mutsy = Manufacturer.find_by_name('Mutsy')
    @manufacturer_pegperego = Manufacturer.find_by_name('PegPerego')
    @manufacturer_4moms = Manufacturer.find_by_name('4Moms')
  end

  def about
  end

  def how_it_works
  end

  def help
  end

  def start
  end

  def sign_up
  end

  def search
    @search = Search.create!(params[:search])

  end

  def sign_in
  end

  def welcome
    current_user
    if current_user.nil?
      redirect_to root_url
      flash[:error] = "Login or sign up to view this page"
    end
  end

end
