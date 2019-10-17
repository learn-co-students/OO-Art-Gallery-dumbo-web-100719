class Gallery

  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self 
  end

  def self.all
    @@all
  end 

  def paintings
    Painting.all.select do |painting|
      if painting.gallery == self
        painting
      end 
    end 
  end 

  def artists
    paintings.map do |painting|
      if painting.gallery == self
        painting.artist 
      end 
    end 
  end 

  def artist_names
    artists.map do |artist|
      artist.name
    end 
  end 

  def most_expensive_painting
    max = 0
    array = paintings.select do |painting|
      if painting.price > max
        max = painting.price 
        painting
      end 
    end 
  end 

end
