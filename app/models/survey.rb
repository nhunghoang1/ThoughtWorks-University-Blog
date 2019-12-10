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

	def check_response?(email)
		responses = @responses.select do |response|
			email == response.email 
		end

		if responses.count > 0
			return true
		else
			return false
		end
	end

	def get_answer_for_rating_question(rating_question)
		answers_summary = {
			1 => 0,
			2 => 0,
			3 => 0,
			4 => 0,
			5 => 0
		}

		@responses.each do |response|
			response.answers.each do |answer|
				if answer.question == rating_question
					if answer.value.class == Integer && answer.value >= 1 && answer.value <= 5
						answers_summary[answer.value] = answers_summary[answer.value] + 1
					end
				end
			end
		answers_summary
		end
	end
end

