require_relative '../config/environment.rb'

steve = Artist.new("Steve", 4)
patrick = Artist.new("Patrick", 15)
legend = Artist.new("Georgia O'Keffe", 27)


mona= Painting.new("Mona Lisa", 12_000_000, patrick)
sunflower= Painting.new("Sunflower", 5_000, steve)
#p Artist.all 

kind_gallery = Gallery.new("The Phyllis Kind Gallery", "Chicago")
the_met = Gallery.new("The Met" , "NYC")
salvador_dali = Gallery.new("Salvador Dali Museum", "St Petersburg")

mona.gallery = the_met
sunflower.gallery = kind_gallery

binding.pry 

puts "Bob Ross rules."
