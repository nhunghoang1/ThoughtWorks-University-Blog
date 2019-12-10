class RatingQuestion < ApplicationRecord
  attr_accessor :title

  def valid_answer?(answer)
    return false if answer.class != Integer 
    answer >= 1 && answer <= 5
  end
end
