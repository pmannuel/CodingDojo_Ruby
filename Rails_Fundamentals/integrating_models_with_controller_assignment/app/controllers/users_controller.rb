class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
  end

  def show
    render json: User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    User.create(name: params[:name])
    redirect_to '/users'
  end

  def update
    User.find(params[:id]).update(name: params[:name])
    redirect_to '/users/' + params[:id]
  end

  def total
    render text: "Total number of users: #{User.count}"
  end
end
