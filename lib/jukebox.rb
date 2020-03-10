class Jukebox
  attr_reader :library, :playlist

  def initialize(library, song_requests)
    @library = library
    @playlist = []

    song_requests.each do |song|
      add_track_to_playlist!(song)
    end
  end

  def add_track_to_playlist!(new_track)
    if @library.include?(new_track)
      @playlist.push(new_track)
    end

    @library.include?(new_track)
  end

  def start_playlist!
    @playlist.each do |song|
      song.play_song!
    end
  end

  def show_playlist
    @playlist.each do |song|
      puts song.full_name
    end
  end
end
