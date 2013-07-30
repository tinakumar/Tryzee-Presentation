class SessionsController < ApplicationController
  def new
  end

  def create
    u = User.find_by_email(params[:session][:email])

    if u.present? && u.authenticate(params[:session][:password])
      session[:user_id] = u.id
      redirect_to welcome_path, notice: "Signed in successfully."
    else
      redirect_to new_session_url, notice: "Nice try."
    end
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "Signed out successfully."
  end
end
