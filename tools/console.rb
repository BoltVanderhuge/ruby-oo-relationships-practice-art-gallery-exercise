require_relative '../config/environment.rb'

bob_ross = Artist.new("Bob Ross", 48)
pablo_picasso = Artist.new("Pabalo Picasso", 52)
art_house = Gallery.new("Art House", "NYC")
art_shack = Gallery.new("Art Shack", "Boston")
art_lodge = Gallery.new("Art Lodge", "Philadelphia")
happy_tree = Painting.new("Happy Little Trees", 249, bob_ross, art_shack)
self_portrait = Painting.new("Self Portrait", 350, pablo_picasso, art_house)
happy_rock = Painting.new("Happy Little Rocks", 425, bob_ross, art_lodge)
guernica = Painting.new("Guernica", 425, pablo_picasso, art_lodge)
binding.pry

puts "Bob Ross rules."
