class Survey < ApplicationRecord
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

	def check_response(email)
		responses = @responses.select do |response|
			email == response.email 
		end

		if responses.count > 0
			return true
		else
			return false
		end
	end
end

