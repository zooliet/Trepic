class AddZombieToTweets < ActiveRecord::Migration
  def change
    add_reference :tweets, :zombie, index: true, foreign_key: true
  end
end
