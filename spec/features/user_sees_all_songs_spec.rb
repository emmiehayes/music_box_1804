require 'rails_helper'

describe 'user index' do

  it 'user can see all songs' do
    song_1 = Song.create(title: "Don't Stop Believin", length: 303, play_count: 2345)
    song_2 = Song.create(title: "Never Gonna Give You Up", length: 253, play_count: 34565)

    visit '/songs'

    expect(page).to have_content("All Songs")

    expect(page).to have_content(song_1.title)
    expect(page).to have_content("Length: #{song_1.length}")

    expect(page).to have_content(song_2.title)
    expect(page).to have_content("Plays: #{song_2.play_count}")
  end
end
