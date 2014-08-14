class SessionsController < ApplicationController
  def new
  end

  def create
    member = Member.find_by(name: params[:name])
    if member && member.authenticate(params[:password])
      session[:member_id] = member.id
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Invalid input(s)"
    end
  end

  def destroy
    session[:member_id] = nil
    redirect_to users_path, notice: 'Logged out'
  end
end
