class SessionsController < ApplicationController

  def log_in
    RubyCAS::Filter
    current_user
    if params[:return_to_controller] && params[:return_to_action]
      redirect_to controller: params[:return_to_controller], action: params[:return_to_action]
    else
      redirect_to home_path
    end
  end

  def log_out
    @current_user = nil
    session[:cas_user] = nil
    redirect_to home_path
  end
end
