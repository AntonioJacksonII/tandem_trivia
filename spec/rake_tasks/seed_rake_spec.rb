require 'rails_helper'

Rails.application.load_tasks

def run_task(task_name:)
    Rake::Task[task_name].invoke
end

describe 'seed.rake' do
    it 'seeds the database with the data from the input trivia data file' do
        run_task(task_name: 'seed')

        expect(Question.count).to eq(21)
        expect(Answer.count).to eq(83)
    end
end