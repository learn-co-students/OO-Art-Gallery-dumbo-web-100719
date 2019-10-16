require_relative '../config/environment.rb'

picasso = Artist.new("Picasso", 40)
pollock = Artist.new("Pollock", 34)
monet = Artist.new("Monet", 55)

moma = Gallery.new("MoMa", "NYC")
louvre = Gallery.new("Louvre", "Paris")
met = Gallery.new("Met", "NYC")


monet.create_painting("poppies", 5000, louvre)
picasso.create_painting("guernica", 4000, moma)
pollock.create_painting("mural", 2000, moma)
pollock.create_painting("convergence", 1000, moma)
monet.create_painting("lady", 3500, met)

monet_paintings = monet.paintings
monet_galleries = monet.galleries
monet_gal_cities = monet.cities

artists_tot_exp = Artist.total_experience

moma_paintings = moma.paintings
moma_artists = moma.artists 
moma_artist_names = moma.artist_names
moma_most_exp = moma.most_expensive_painting


binding.pry

puts "Bob Ross rules."
