require 'rails_helper'

describe Answer, type: :model do
    describe 'validations' do
        it { should validate_presence_of(:response) }
        it { should validate_inclusion_of(:correct?).in_array([true, false]) }
    end

    describe 'relationships' do
        it { should belong_to(:question) } 
    end
end