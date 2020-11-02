class QuestionsController < ApplicationController

    def index
        questions = Question.take(10)
        current_question = questions.first
        if current_question
            redirect_to "/questions/#{current_question.id}"
        else
            redirect_to results_path
        end
    end

    def show
        
    end
end