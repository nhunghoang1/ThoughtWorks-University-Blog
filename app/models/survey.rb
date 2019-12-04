class Survey < ApplicationRecord
  attr_reader :name

	def initialize(name:)
		@name = name
	end
		
	def add_question(question)
		@questions << question
	end

	def add_response(response)
		@responses << response
	end

	def find_response_by_email(email)
		responses = @responses.select{ |response| response.email == email }
		if responses.empty?
			return nil
		else
			return responses
		end
	end

end
