class Playlist < ApplicationRecord
  has_many :playlist_songs  #MUST BE ABOVE LINE 3
  has_many :songs, through: :playlist_songs
end
