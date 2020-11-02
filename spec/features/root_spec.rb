require 'rails_helper'

describe 'root page', type: :feature do
    it 'displays a welcome message' do
        visit root_path   
        expect(page).to have_content('Welcome to Tandem Trivia!')
    end

    it 'displays a "Take Quiz" button that redirects to the questions index' do
        question = Question.create!(ask: 'Is this a test question?')

        visit root_path
        expect(page).to have_button('Take Quiz')
        
        click_on 'Take Quiz'
        expect(current_path).to eq(question_path(question.id))
    end
    
end