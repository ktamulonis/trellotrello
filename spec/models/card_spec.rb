require 'rails_helper'

RSpec.describe Card, type: :model do
  it "has a valid factory" do
  	expect(create :card).to be_valid
  end

  it "must have a user" do
  	expect(build :card, user:nil).not_to be_valid
  end

  it "must have a board" do
  	expect(build :card, board:nil).not_to be_valid
  end  

  it "must have a title" do
  	expect(build :card, title:nil).not_to be_valid
  end

  
end
