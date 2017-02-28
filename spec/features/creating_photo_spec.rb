require 'rails_helper'

RSpec.describe Photo, type: :feature do
  feature 'Creating a photo' do
    background do
      visit new_photo_path
    end

    scenario 'shows valid input text', js: true do
      expect(page).to have_content('Choose file to upload')
    end

    feature 'with valid information' do
      background do
        attach_file 'photo[image]', 'spec/fixtures/image.jpg'
      end

      scenario 'shows preview of uploaded image', js: true do
        expect(page).to have_css('.jFiler-item-thumb')
        expect(page).to have_selector('img')
      end

      scenario 'should create a photo' do
        expect { click_button 'Upload' }.to change(Photo, :count).by(1)
      end
    end

    feature 'with invalid (blank) information' do
      scenario "don's show preview of uploaded image", js: true do
        expect(page).not_to have_selector('img')
      end

      scenario 'should not create a photo' do
        expect { click_button 'Upload' }.not_to change(Photo, :count)
      end

      scenario 'should show error message' do
        click_button 'Upload'

        expect(page).to have_content("Image can't be blank")
        expect(page).to have_selector('form')
        expect(page).to have_css('#new_photo')
      end
    end
  end
end
