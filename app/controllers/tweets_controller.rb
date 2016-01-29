class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def show
  end

  def destroy
  end
end
