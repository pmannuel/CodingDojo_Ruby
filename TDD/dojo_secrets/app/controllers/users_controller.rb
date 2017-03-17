class UsersController < ApplicationController
  skip_before_action :require_login, only: [:index, :authenticate, :new, :create]

  def index
  end

  def authenticate
    if User.exists?(email: params[:email])
      @user = User.find_by_email(params[:email]).try(:authenticate, params[:password])

      if @user == false
        flash[:errors] = "Invalid Password"
        redirect_to '/sessions/new'
      else
        session[:user_id] = @user.id
        redirect_to '/users/%d' % @user.id
      end

    else
      flash[:errors] = "Invalid Email"
      redirect_to '/sessions/new'
    end
  end

  def dashboard
    @secrets = current_user.secrets
  end

  def new
  end

  def create
    @user = User.create(name: params[:name], email:params[:email], password:params[:password], password_confirmation:params[:password_confirmation])
    if @user.valid?
      redirect_to '/sessions/new'
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to '/users/new'
    end
  end

  def log_out
    reset_session
    redirect_to '/sessions/new'
  end
end
