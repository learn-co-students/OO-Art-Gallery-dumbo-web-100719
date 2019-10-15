class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all 
    @@all 
  end 

  def paintings
    Painting.all.select do |painting|
      #binding.pry 
      painting.artist == self
    end
  end

  def galleries
    paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    paintings.max_by do |painting|
      binding.pry
    end
  end

  def self.most_prolific
    self.all.max_by do |artist|
      artist.paintings.count/artist.years_experience
    end
  end

  def self.create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
    binding.pry
  end

end
