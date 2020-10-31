class Answer < ApplicationRecord
    validates_presence_of :response
    validates :correct?, inclusion: [true, false]
    belongs_to :question
end