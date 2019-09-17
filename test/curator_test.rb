require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'
require './lib/artist'
require './lib/curator'


class CuratorTest < Minitest::Test

  def setup
  @curator = Curator.new
  @photo_1 = Photograph.new({id: "1", name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: "1", year: "1954" })
  @photo_2 = Photograph.new({id: "2", name: "Moonrise, Hernandez", artist_id: "2", year: "1941"})
  @artist_1 = Artist.new({id: "1", name: "Henri Cartier-Bresson", born: "1908", died: "2004", country: "France"})
  @artist_2 = Artist.new({id: "2", name: "Ansel Adams", born: "1902", died: "1984", country: "United States"})
  end

  def test_curator_exists
    assert_instance_of Curator, @curator
  end

  def test_photographs_start_empty_and_can_be_added
    assert_equal [], @curator.photographs
  end

end
