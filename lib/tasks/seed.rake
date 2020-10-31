desc 'Seeds the database with the questions and answers from the data file'

task seed: :environment do
    trivia = File.read(ENV['TRIVIA_DATA_FILE'])
    json = JSON.parse(trivia, symbolize_names: true)

    json.each do |q|
        question = Question.create!(ask: q[:question])
        q[:incorrect].each do |response|
            response = question.answers.create!(response: response, correct?: false)
        end
        question.answers.create!(response: q[:correct], correct?: true)
    end
end