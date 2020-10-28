require 'rails_helper'

describe Answer, type: :model do
    describe 'validations' do
        it { should validate_presence_of(:response) }
        it { should validate_presence_of(:correct?) }
    end

    describe 'relationships' do
        it { should belong_to(:question) } 
    end
end