class Answer < ApplicationRecord
    validates_presence_of :response
    validates_presence_of :correct?
    belongs_to :question
end