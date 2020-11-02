require 'rails_helper'

describe 'Questions Index Page' do
    it 'displays the question ask and answers' do
        question = Question.create!(ask: 'Is this a test question?')
        yes = question.answers.create!(response: 'Yes', correct?: true)
        no = question.answers.create!(response: 'No', correct?: false)

        visit questions_path

        expect(page).to have_content('Is this a test question?')
        expect(page).to have_content('Select your answer below and click "Submit"')
        expect(page).to have_content(yes.response)
        expect(page).to have_content(no.response)
    end
end