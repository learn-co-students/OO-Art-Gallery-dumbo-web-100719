class Artist

  attr_reader :name, :years_experience
  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def create_painting(title,price,artist,gallery)
    # title, price, artist,gallery
    Painting.new(title,price,self,gallery)
  end
  
  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}
  end

  def cities
    galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    # t_exp = 0
    # self.all.map {|artist| t_exp += artist.years_experience}.last
    # self.all.reduce(0) {|sum,artist| sum + artist.years_experience}

    # self.all.map {|artist| artist.years_experience}.sum

  end

  def self.most_prolific
    
  
  end

  def self.all
    @@all
  end


end
