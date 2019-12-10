require 'rails_helper'

RSpec.describe FreeTextQuestion do
  subject { FactoryBot.build(:free_text_question, title: title) }
  let(:title) { "What is your experience at TWU?"}

  it "has a title" do
    expect(subject.title).to eq("What is your experience at TWU?")
  end


  describe '#valid_answer?' do
    context "when the answer is valid" do
      it "will return true" do
        expect(subject.valid_answer?('What is your experience at TWU?')).to eq(true)
      end
    end

    context "when the answer is invalid" do
      let(:answer) { nil }

      it "will raise an exception" do
        expect{ subject.valid_answer?(answer) }.to raise_error(ResponseError)
      end
    end
  end
end