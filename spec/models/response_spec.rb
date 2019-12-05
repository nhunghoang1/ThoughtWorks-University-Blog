require 'rails_helper'

RSpec.describe Response do
    
    subject { FactoryBot.build(:response) }

    it "has an email" do
			expect(subject.email).to eq('email@example.com')
    end
end