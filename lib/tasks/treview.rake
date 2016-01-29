# encoding: UTF-8

namespace :tv do
  desc "Create Zombies"
  task :zombies => :environment do
    Zombie.destroy_all

    Zombie.create(name: 'Ash', graveyard: 'Glen Haven Memorial Cemetery')
    Zombie.create(name: 'Bob', graveyard: 'Chapel Hill Cemetery')
    Zombie.create(name: 'Jim', graveyard: 'My Father\' Basement')

    puts "#{Zombie.count} zombies are created."
  end


  desc "Create Tweets"
  task :tweets => :environment do
    Tweet.destroy_all

    ash = Zombie.find_by(name: 'Ash')
    bob = Zombie.find_by(name: 'Bob')
    jim = Zombie.find_by(name: 'Jim')

    Tweet.create(status: 'Where can i get a good bite to eat?', zombie: ash)
    Tweet.create(status: "My left arm is missing, but I don't care", zombie: bob)
    Tweet.create(status: "I just ate some dilicious brains", zombie: jim)
    Tweet.create(status: "OMG, my fingers turned green. #FML", zombie: ash)
    Tweet.create(status: "Your eyelids taste like bacon.", zombie: bob)

    puts "#{Tweet.count} tweets are created."
  end
end

