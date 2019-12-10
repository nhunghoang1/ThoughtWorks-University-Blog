require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { FactoryBot.build(:post) }
  
  describe '#validation' do
    it "should have a title" do
      expect(subject.title).to eq("What is ThoughtWorks University?")
    end
  end
end