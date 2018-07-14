require 'rails_helper'

describe 'a user can create a new song' do
  it 'by filling out a form' do
    artist = Artist.create(name: 'Wild Cherry')
    song_title = "Adam's Song"
    song_length = 267
    song_play_count = 3_456_234

    visit new_artist_song_path(artist)

    fill_in :song_title, with: song_title
    fill_in :song_length, with: song_length
    fill_in :song_play_count, with: song_play_count
    fill_in :song_play_count, with: song_play_count

    click_on 'Create Song'

    expect(current_path).to eq(songs_path)
    expect(page).to have_content(song_title)

  end
end
