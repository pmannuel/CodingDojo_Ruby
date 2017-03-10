class SaysController < ApplicationController
  def index
    render :text => "What do you want me to say???"
  end

  def hello
    render :text => "Hello CodingDojo!"
  end

  def say_hello
    render :text => "Saying Hello!"
  end

  def say_hello_joe
    render :text => "Saying Hello Joe!"
  end

  def say_hello_michael
    render :text => "Saying Hello Michael!"
  end

  def times
    if session[:counter]
      session[:counter] += 1
    else
      session[:counter] = 0
    end
    @counter = session[:counter]
  end

  def times_restart
    session[:counter] = 0
    render :text => "Destroyed the session"
  end
end
