require 'rails_helper'

RSpec.describe Answer, type: :model do
  subject {described_class.new(question: question, value: value) }
  let(:question) { Question.new(title: title) }
  let(:title) { "What motivates you at TWU?" }
  let(:value) { "" }

  it "has a question" do
    expect(subject.question.title).to eq(title)
  end

  describe '#question' do
    it "will open access to question" do
      expect(subject.question).to eq(question)
    end
  end
  describe '#value' do
    it "will opne access to value" do
      expect(subject.value).to eq(value)
    end
  end
end