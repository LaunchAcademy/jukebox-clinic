require_relative './lib/jukebox'
require_relative './lib/song'
require 'pry'
song1 = Song.new("Hello", "Lionel Ritchie")
song2 = Song.new("Sunflower", "Sway Lee")
song3 = Song.new("Ghost", "Mystery Skulls")
song4 = Song.new("Beer", "RBF")
song5 = Song.new("Yesterday", "Guns and Roses")

available_songs = [song1, song3, song4, song5]

requested_songs = [song4, song2]

jukebox = Jukebox.new(available_songs, requested_songs)

jukebox.add_track!(song3)

puts "\noriginal playlist"

jukebox.play_requested!
jukebox.play_requested!
jukebox.play_requested!
jukebox.play_requested!
