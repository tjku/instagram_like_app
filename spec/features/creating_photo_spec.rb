require 'rails_helper'

RSpec.describe Photo, type: :feature do
  feature 'Creating a photo' do
    background do
      visit new_photo_path
    end

    scenario 'show the photo on the photo page' do
      attach_file 'Image', 'spec/support/fixtures/image.jpg'
      click_button 'Create Photo'

      expect(page).to have_selector('img')
      expect(page).to have_content('Delete photo')
    end

    scenario 'cannot submit a blank image field' do
      click_button 'Create Photo'

      expect(page).to have_selector('form')
      expect(page).to have_css('#new_photo')
    end
  end
end
