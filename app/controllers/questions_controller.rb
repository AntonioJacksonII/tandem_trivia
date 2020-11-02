class QuestionsController < ApplicationController

    def index
        if params[:quiz_ids]
            quiz_ids = params[:quiz_ids]
        else
            questions = Question.take(10)
            quiz_ids = questions.map { |question| question.id }
        end
        current_question = Question.find(quiz_ids.first)
        quiz_ids.shift
        if current_question
            redirect_to question_path(current_question.id, quiz_ids)
        else
            redirect_to results_path
        end
    end

    def show
        @current_question = Question.find(params[:id])
        @current_answers = @current_question.answers
    end

    private

    def question_params
        params.permit(:id, :quiz_ids)
    end
end