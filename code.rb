require "pry"

require_relative "./lib/jukebox"

library = [
  "Hello - Lionel Ritchie",
  "Kokomo – The Beach Boys",
  "Girl You Know It’s True – Milli Vanilli",
  "Agadoo – Black Lace",
  "Down Under - Men at Work",
  "Nothing's Gonna Stop Us Now - Starship",
  "Get Outta My Dreams, Get Into My Car - Billy Ocean",
  "I Just Called To Say I Love You - Stevie Wonder",
  "Hangin' Tough - New Kids on the Block",
  "We Built This City - Starship",
  "Wake Me Up Before You Go Go - Wham!",
  "We Didn't Start The Fire - Billy Joel",
  "I Wanna Dance With Somebody - Whitney Houston",
  "U Can't Touch This - MC Hammer"
]

song_requests = [
  "Wake Me Up Before You Go Go - Wham!",
  "Get Outta My Dreams, Get Into My Car - Billy Ocean",
  "We Built This City - Starship",
  "She Don't Love Me Anymore - The Aliens"
]

jukebox = Jukebox.new(library, song_requests)

puts "Original Playlist"
puts jukebox.playlist

jukebox.add_track_to_playlist!("Hello - Lionel Ritchie")

puts "\n\nNew Playlist"
puts jukebox.playlist

puts "\n\n\n"

jukebox.start_playlist!
jukebox.start_playlist!
jukebox.start_playlist!
jukebox.start_playlist!
jukebox.start_playlist!
# binding.pry
