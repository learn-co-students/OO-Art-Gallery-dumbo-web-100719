require_relative '../config/environment.rb'

van_gogh = Artist.new("Van Gogh", 10)
monet = Artist.new("Monet", 30)
picasso = Artist.new("Picasso", 12)

tate_modern = Gallery.new("Tate Modern", "London")
flatiron = Gallery.new("Flatiron", "Dumbo")
moma = Gallery.new("MoMa","Manhattan")

starry_night = Painting.new("Starry Night", 34, van_gogh, tate_modern)
lilies = Painting.new("Lilies", 100, monet, tate_modern)
cube = Painting.new("Cube", 600, picasso, moma)

binding.pry

puts "Bob Ross rules."
