class GameController < ApplicationController
  def index
    if session[:gold] == nil
      session[:gold] = 0
    end

    if session[:gold] < 0
      session[:gold_color] = 'red'
    else
      session[:gold_color] = 'green'
    end

    if session[:logs] == nil
      session[:logs] = []
    end
  end

  def earn
    color = 'green'
    if params[:activity] == 'farm'
      earning = rand(10..20)
      session[:gold] += earning
    elsif params[:activity] == 'cave'
      earning = rand(5..10)
      session[:gold] += earning
    elsif params[:activity] == 'house'
      earning = rand(2..5)
      session[:gold] += earning
    elsif params[:activity] == 'casino'
      earning = rand(-50..50)
      session[:gold] += earning
      if earning < 0
        color = 'red'
      end
    end
    timestamp = Time.now.strftime("(%Y/%m/%d/ %I:%M %p)")
    log = "Earned %d golds from the " % earning + params[:activity] + "! " + timestamp
    session[:logs].insert(0,{ "txt-color" => color, "content" => log })

    redirect_to '/'

  end

  def reset
    session[:gold] = 0
    session[:logs] = []

    redirect_to '/'
  end

end
