require 'rails_helper'

describe 'root page', type: :feature do
    it 'displays a welcome message' do
        visit '/'
        
        expect(page).to have_content('Welcome to Tandem Trivia!')
        expect(page).to have_button('Take Quiz')
    end
end