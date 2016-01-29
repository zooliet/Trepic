class TweetsController < ApplicationController
  def index
    if params[:zombie_id].present?
      @zombie = Zombie.find(params[:zombie_id])
      # @tweets = Tweet.where(zombie_id: params[:zombie_id])
      @tweets = @zombie.tweets
    else
      @tweets = Tweet.all
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy

    redirect_to tweets_path, notice: "Tweet was successfully destroyed"
  end
end
