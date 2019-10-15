class Artist

  @@all = []

  attr_reader :name, :years_experience


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
      painting.artist == self
    end 
  end

  def galleries
    #Gallery.all.select 
    paintings.map do |painting|
      painting.gallery 
    end
  end 


end
