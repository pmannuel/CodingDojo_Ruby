class WallController < ApplicationController
  def index
  end

  def sign_in
    if User.exists?(username: params[:username])
      session[:curr_user] = User.where(username: params[:username])
      redirect_to '/dashboard'
    else
      new_user = User.create(username: params[:username])
      if new_user.valid?
        session[:curr_user] = [new_user]
        redirect_to '/dashboard'
      else
        flash[:errors] = new_user.errors.full_messages
        redirect_to root_path
      end
    end
  end

  def dashboard
    @messages = Message.all
  end

  def post_message
    id = session[:curr_user][0]['id']
    poster = User.find(id)
    new_message = Message.create(message: params[:message], user:poster)
    if new_message.invalid?
      flash[:errors] = new_message.errors.full_messages
    end
    redirect_to '/dashboard'
  end

  def log_out
    reset_session
    redirect_to root_path
  end
end
