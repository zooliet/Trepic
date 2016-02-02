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

  def new
    @tweet = Tweet.new
  end

  def create
    # params = {tweet: {status: "xxx", zombie_id: 8}}

    @tweet = Tweet.new
    @tweet.status = params[:tweet][:status]
    @tweet.zombie_id = params[:tweet][:zombie_id]

    # @tweet = Tweet.new(status: params[:tweet][:status], zombie_id: params[:tweet][:zombie_id])

    # @tweet = Tweet.new(params[:tweet])

    # @tweet = Tweet.new(tweet_params)

    # @tweet.save
    # redirect_to tweets_path, notice: "Tweet was created"

    if @tweet.save
      redirect_to tweets_path, notice: "Tweet was created"
    else
      # render :new
      redirect_to tweets_path, flash: {warning: @tweet.errors.full_messages.to_sentence}
    end

  end

  # private
  # def tweet_params
  #   params.require(:tweet).permit(:status, :zombie_id)
  # end
end
