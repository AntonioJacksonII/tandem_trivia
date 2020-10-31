desc 'Seeds the database with the questions and answers from the data file'
task :seed do
    ruby 'app/services/seed_service.rb'
end