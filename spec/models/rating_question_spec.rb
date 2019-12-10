require 'rails_helper'

RSpec.describe RatingQuestion do
  subject { FactoryBot.build(:rating_question) }

  it "has a title" do
    expect(subject.title).to eq("What is your experience at TWU?")
  end

  describe '#valid_answer?' do
    context "when the answer is valid" do
      it "will return true" do
        (1..5).each do |rating|
          expect(subject.valid_answer?(rating)).to be true
        end
      end
    end

    context "when the answer is invalid" do
      it "will return false" do
        expect(subject.valid_answer?(6)).to be false
      end

      it "will return false" do
        expect(subject.valid_answer?(-1)).to be false
      end
    end
  end
end