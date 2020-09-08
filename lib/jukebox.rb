class Jukebox
  attr_reader :library, :song_requests

  def initialize(library, song_requests)
    @library = library
    @song_requests = []
    
    # binding.pry
    song_requests.each do |song|
      # binding.pry
      add_track_to_playlist!(song)
    end
    # binding.pry
  end

  def add_track_to_playlist!(new_track)
    # binding.pry
    # check if the song is in our library
    if library.include?(new_track)
      # binding.pry
      song_requests.push(new_track)
      # song_requests << new_track
      # if it's available, add to song_requests and return true
      return true
    else
      # otherwise, return false
      return false
    end
  end

  def start_playlist!
    # binding.pry
    # grab the first song
    # current_song = @song_requests.shift
    # binding.pry
    # display that song as Now Playing
    # puts "Now Playing: #{current_song}"
    # add song to the end of the playlist
    # @song_requests.push(current_song)
    # binding.pry
    # @song_requests << current_song
    @song_requests.each do |song|
      song.play_track!
    end
  end
end
