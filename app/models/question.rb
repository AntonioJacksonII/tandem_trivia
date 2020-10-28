class Question < ApplicationRecord
    validates_presence_of :ask
    has_many :answers
end