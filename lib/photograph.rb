class Photograph

  attr_reader :id, :name, :artist_id, :year

  def initialize(photograph_info)
    @id = photograph_info[:id]
    @name = photograph_info[:name]
    @artist_id = photograph_info[:artist_id]
    @year = photograph_info[:year]
  end


end
