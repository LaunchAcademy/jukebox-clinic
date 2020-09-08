require 'pry'
require_relative './lib/jukebox'
require_relative './lib/song'

# library = [
#   "Hello - Lionel Ritchie",
#   "Kokomo – The Beach Boys",
#   "Girl You Know It’s True – Milli Vanilli",
#   "Agadoo – Black Lace",
#   "Down Under - Men at Work",
#   "Nothing's Gonna Stop Us Now - Starship",
#   "Get Outta My Dreams, Get Into My Car - Billy Ocean",
#   "I Just Called To Say I Love You - Stevie Wonder",
#   "Hangin' Tough - New Kids on the Block",
#   "We Built This City - Starship",
#   "Wake Me Up Before You Go Go - Wham!",
#   "We Didn't Start The Fire - Billy Joel",
#   "I Wanna Dance With Somebody - Whitney Houston",
#   "U Can't Touch This - MC Hammer"
# ]

# song_requests = [
#   "Wake Me Up Before You Go Go - Wham!",
#   "She Don't Love Me Anymore - The Aliens"
# ]

song1 = Song.new("Wake Me Up Before You Go Go", "Wham!")
song2 = Song.new("She Don't Love Me Anymore", "The Aliens")
song3 = Song.new("Hello", "Lionel Ritchie")
song4 = Song.new("Kokomo", "The Beach Boys")
song5 = Song.new("Nothing's Gonna Stop Us Now", "Starship")

library = [song1, song2, song3, song4]

song_requests = [song1, song2]

jukebox = Jukebox.new(library, song_requests)
# binding.pry

puts "\nOriginal Playlist:"
# puts jukebox.song_requests
jukebox.song_requests.each do |song|
  puts song.full_name
end
# binding.pry
# jukebox.add_track_to_playlist!("We Built This City - Starship")
jukebox.add_track_to_playlist!(song4)
jukebox.add_track_to_playlist!(song5)

puts "\nNew playlist:"
# puts jukebox.song_requests
jukebox.song_requests.each do |song|
  puts song.full_name
end

jukebox.start_playlist!
jukebox.start_playlist!
jukebox.start_playlist!

# binding.pry