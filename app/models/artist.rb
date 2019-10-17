class Artist

  @@all = []

  attr_accessor :name, :years_experience

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
      if painting.artist == self 
        painting
      end 
    end 
  end 

  def paintings_length #helper method for most_prolific, not that it worked 
    array = Painting.all.select do |painting|
      if painting.artist == self 
        painting
      end 
    end 
    array.length 
  end 

  def galleries
    paintings.map do |painting|
      if painting.artist == self 
        painting.gallery
      end 
    end 
  end 

  def cities
    galleries.map do |gallery|
      gallery.city 
    end 
  end 

  def self.total_experience 
    total = 0
    all.map do |artist|
      total += artist.years_experience
    end 
    total
  end 

  def self.most_prolific
    all.max_by do |artist|
      artist.paintings_length / artist.years_experience
    end 
  end 

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end 

end 