class SecretsController < ApplicationController
  def index
    @secrets = Secret.all
  end

  def create
    @new_secret = Secret.create(content:params[:content] ,user:current_user)
    redirect_to '/users/%d' % session[:user_id]
  end

  def like
    Like.create(user:current_user, secret:Secret.find(params[:secret_id]))
    redirect_to '/secrets'
  end

  def unlike
    @like = Like.where(secret_id: params[:secret_id], user_id: current_user.id)
    @like.first.destroy
    redirect_to '/secrets'
  end

  def delete
    Secret.find(params[:secret_id]).destroy
    redirect_to '/users/%d' % session[:user_id]
  end
end
