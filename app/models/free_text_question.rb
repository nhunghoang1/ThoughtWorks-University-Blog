class FreeTextQuestion < ApplicationRecord
  attr_accessor :title

    def valid_answer?(answer)
    if answer.class == String
      return true
    else
      raise ResponseError
    end
  end
end

ResponseError = Class.new(RuntimeError)