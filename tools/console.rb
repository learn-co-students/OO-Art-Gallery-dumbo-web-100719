require_relative '../config/environment.rb'

a1 = Artist.new("yuriy", 12)
a2 = Artist.new("muna", 8)
a3 = Artist.new("stephen", 15)

g1 = Gallery.new("tate", "london")
g2 = Gallery.new("flatiron", "brooklyn")

p1 = Painting.new("starry night", 500, g2, a2)
p2 = Painting.new("scream", 400, g1, a3)
p3 = Painting.new("winter", 20, g2, a1)
p4 = Painting.new("spring", 15, g1, a1)
p5 = Painting.new("mona lisa", 5000, g2, a2)


binding.pry

puts "Bob Ross rules."
