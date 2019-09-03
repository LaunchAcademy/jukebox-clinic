class Jukebox
  attr_reader :available_songs, :requested_songs

  def initialize(available_songs, requested_songs)
    @available_songs = available_songs
    @requested_songs = []
    requested_songs.each do |song|
      add_track!(song)
    end
  end

  def add_track!(new_track)
    if @available_songs.include?(new_track)
      @requested_songs.push(new_track)
    end
    @available_songs.include?(new_track)
  end

  def play_requested!
    current_song = @requested_songs.shift
    @requested_songs.push(current_song)
    puts "Now Playing #{current_song.full_name}"
  end
end
