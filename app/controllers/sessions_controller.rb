class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to session_path(session[:name])
    end
  end

  def show
    @user = session[:name]
  end

  def destroy
    if session[:name] != nil
      session.delete :name
    end
    redirect_to login_path
  end

end
