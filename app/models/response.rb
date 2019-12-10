class Response < ApplicationRecord
  attr_reader :email, :answers

  def add_answer(answer)
    @answers << answer
  end
end

