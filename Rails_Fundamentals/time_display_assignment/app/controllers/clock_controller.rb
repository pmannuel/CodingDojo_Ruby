class ClockController < ApplicationController
  def index
    @date = Time.now.strftime("%d/%m/%Y")
    @time = Time.now.strftime("%I:%M %p")
  end

  def new
  end

  def create
    puts params[:ninja]

    if session[:counter]
      session[:counter] += 1
    else
      session[:counter] = 1
    end

    session[:ninja] = params[:ninja]

    redirect_to '/survey/result'
  end

  def show
    flash[:success] = "Thanks for submitting this form! You have submitted %d forms" % session[:counter]
    @ninja = session[:ninja]
  end
end
