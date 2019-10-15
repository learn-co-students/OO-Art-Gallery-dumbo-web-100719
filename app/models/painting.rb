class Painting

  attr_reader :title, :price, :artist, :gallery
  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self 
  end

  def self.all 
    @@all 
  end

  def self.total_price
    var =self.all.map do |artist|
      artist.price 
    end
    var.reduce(0) do |acc, price|
      acc += price
    end
  end

end
