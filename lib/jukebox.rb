class Jukebox
  attr_reader :library, :playlist, :rejected_songs

  def initialize(library, song_requests)
    @library = library
    @playlist = []
    @rejected_songs = []

    song_requests.each do |song|
      add_track_to_playlist!(song)
    end
  end

  def add_track_to_playlist!(new_track)
    if @library.include?(new_track)
      @playlist.push(new_track)
    else
      @rejected_songs << new_track
    end
  end

  def start_playlist!

    @playlist.each do |song|
      # puts song.full_name
      song.play_song!
      puts "Currently playing: #{song.full_name}"
    end
    return
    # current_song = @playlist.shift
    # @playlist << current_song
    puts ""
  end
end
