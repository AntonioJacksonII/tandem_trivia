require 'rails_helper'

describe Question, type: :model do
    describe 'validations' do
       it { should validate_presence_of(:ask) }
    end

    describe 'relationships' do
        it { should have_many(:answers) } 
    end
end
