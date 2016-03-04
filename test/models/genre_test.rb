require "test_helper"

class GenreTest < ActiveSupport::TestCase
  def genre
    @genre ||= Genre.new
  end

  def test_valid
    assert genre.valid?
  end
end
