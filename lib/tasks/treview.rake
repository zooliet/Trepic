# encoding: UTF-8

namespace :tv do
  desc "Create Tweets"
  task :tweets => :environment do
    Tweet.destroy_all

    Tweet.create(status: 'Where can i get g good bite toe eat?', zombie: 'Ash')
    Tweet.create(status: "My left arm is missing, but I don't care", zombie: 'Bob')
    Tweet.create(status: "I just ate some dilicious brains", zombie: 'Jim')
    Tweet.create(status: "OMG, my fingers turned green. #FML", zombie: 'Ash')
    Tweet.create(status: "Your eyelids taste like bacon.", zombie: 'Bob')

    puts "#{Tweet.count} tweets are created."
  end
end

