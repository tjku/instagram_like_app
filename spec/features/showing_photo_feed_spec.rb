require 'rails_helper'

RSpec.describe Photo, type: :feature do
  feature 'Showing photo feed' do
    background do
      visit root_path
    end

    scenario 'without photos' do
      expect(page).not_to have_css('img')
    end

    feature 'with existing photos' do
      background do
        3.times { FactoryGirl.create :photo }
        visit root_path
      end

      scenario 'should have 3 photos' do
        expect(page).to have_css('img', count: 3)
      end
    end
  end
end
