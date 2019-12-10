require 'rails_helper'

RSpec.describe Response, type: :model do
    
	subject { FactoryBot.build(:response, email: email) }
	let(:email) { "email@example.com" }

	it "has an email" do
		expect(subject.email).to eq('email@example.com')
	end
	
	it "can add answers" do
		answer = double(:answer)
		subject.add_answer(answer)

		expect(subject.answers).to include(answer)
	end
end