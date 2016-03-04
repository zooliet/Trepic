require "test_helper"

class BookGenreTest < ActiveSupport::TestCase
  def book_genre
    @book_genre ||= BookGenre.new
  end

  def test_valid
    assert book_genre.valid?
  end
end
