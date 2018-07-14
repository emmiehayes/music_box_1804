require 'rails_helper'

describe 'user index' do

  it 'user can see all songs' do
    artist = Artist.create(name: 'Adele')

    song_1 = artist.songs.create!(title: "Don't Stop Believin", length: 303, play_count: 2345)
    song_2 = artist.songs.create!(title: "Never Gonna Give You Up", length: 253, play_count: 34565)

    visit songs_path

    expect(page).to have_content("My Songs")

    expect(page).to have_content(song_1.title)
    expect(page).to have_content("Length: #{song_1.length}")

    expect(page).to have_content(song_2.title)
    expect(page).to have_content("Play Count: #{song_2.play_count}")
  end
end
