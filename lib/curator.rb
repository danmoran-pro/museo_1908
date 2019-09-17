class Curator

  attr_reader :photographs, :artists

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photo)
    @photographs << (photo)
  end

  def add_artist(artist)
    @artists << (artist)
  end

  def find_artist_by_id(id)
    @artists.find {|artist| artist.id == id}
  end

  def find_photograph_by_id(id)
    @photographs.find {|photo| photo.id == id}
  end

  def find_photographs_by_artist(artist)
    @photographs.find_all {|photo| photo.artist_id == artist.id}
  end

  def get_all_artist_id
    @artists.map {|artist| artist.id}
  end

  def get_all_artist_location
    @artists.map {|artist| artist.country}
  end


  def get_all_artist_id_through_photo
    @photographs.map {|photo| photo.artist_id}
  end

  def artists_with_multiple_photographs
    artist_array = []
    id = get_all_artist_id_through_photo.detect{ |id| get_all_artist_id_through_photo.count(id) > 1 }
    artist_array << find_artist_by_id(id)
    end

    def photographs_taken_by_artist_from(location)
      @artists.map {|artist| artist if  artist.country == location}.compact
    end
  end
