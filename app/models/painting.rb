class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist,gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.total_price
    t_price = o
    self.all.select {|painting| t_price += painting.price}
  end

  def self.all
    @@all
  end

end
