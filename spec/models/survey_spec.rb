require 'rails_helper'

RSpec.describe Survey, type: :model do
	subject { FactoryBot.build(:survey) }
	
	it "has a name" do
		expect(subject.name).to eq("Engagement Survey")
	end

	it "can add questions" do
		question = double(:question)
		subject.add_question(question)

		expect(subject.questions).to include(question)
	end

	it "can add response" do
		response = double(:response)
		subject.add_response(response)

		expect(subject.add_response).to include(response)
	end

	describe "#find_response_by_email" do
		context "when there are responses" do
			let(:response1) { Response.new(email: 'email1@example.com')}
			let(:response2) { Response.new(email: 'email2@example.com')}

			before {
				subject.add_response(response1)
								.add_response(response2)
			}

			context "and we try to find it by an existing email" do
				it "will find the response by its email" do
					expect(subject.find_response_by_email('email1@example.com').size).to eq(1)
				end
			end

			context "and there are no email that matches" do
				it "will return nil" do
					expect(subject.find_response_by_email('email3@example.com')).to eq(nil)
				end
			end

		context "when there are no responses" do
			it "will return nil" do
				expect(subject.find_response_by_email('email1@example.com')).to eq(nil)
			end
		end
		end
	end
	
	describe "#check_response" do
		let(:response1) { Response.new(email: 'email1@example.com')}
		let(:response2) { Response.new(email: 'email2@example.com')}

		before {
				subject.add_response(response1)
								.add_response(response2)
		}

		context "when user has responded" do
			it "will return true" do
				expect(subject.check_response).to eq(true)
			end
		end

		context "when user has not response" do
			it "will return false" do
        expect(subject.has_responded_yet?('anemail@thatdoesntexist.com')).to eq(false)
      end
		end
	end
end