require "test_helper"

class ZombieTest < ActiveSupport::TestCase
  def zombie
    @zombie ||= Zombie.new
  end

  def test_valid
    assert zombie.valid?
  end
end
