require "pry"

require_relative "./lib/jukebox"
require_relative "./lib/song"

song1 = Song.new("Wake Me Up Before You Go Go", "Wham!")
song2 = Song.new("She Don't Love Me Anymore", "The Aliens")
song3 = Song.new("Hello", "Lionel Ritchie")
song4 = Song.new("Kokomo", "The Beach Boys")
song5 = Song.new("Nothing's Gonna Stop Us Now", "Starship")

library = [song1, song2, song3, song4]

song_requests = [song1, song2]

jukebox = Jukebox.new(library, song_requests)

puts "Original Playlist"
jukebox.show_playlist

jukebox.add_track_to_playlist!(song3)
jukebox.add_track_to_playlist!(song5)

puts "\n\nNew Playlist"
jukebox.show_playlist

puts "\n\n\n"

jukebox.start_playlist!
jukebox.start_playlist!
jukebox.start_playlist!

# binding.pry
