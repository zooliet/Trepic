require "test_helper"

class DummyTest < ActiveSupport::TestCase
  def dummy
    @dummy ||= Dummy.new
  end

  def test_valid
    assert dummy.valid?
  end
end
