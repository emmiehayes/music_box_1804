require 'rails_helper'

describe 'user index' do

  it 'user can see all artists' do
    artist_1 = Artist.create(name: 'Adele')
    artist_2 = Artist.create(name: 'Journey')

    visit artists_path

    expect(page).to have_content("All Artists")
    expect(page).to have_content(artist_1.name)
    expect(page).to have_content(artist_2.name)

  end
end
