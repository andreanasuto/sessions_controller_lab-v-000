class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to sessions_new
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if params[:name].nil?
      session[:name]
    else
      session[:name].destroy
    end
  end
end
