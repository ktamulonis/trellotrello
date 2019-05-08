require 'rails_helper'

RSpec.describe List, type: :model do
  it "has a valid factory" do 
  	expect(create(:list)).to be_valid
  end

  it "must have a user" do
  	expect(build(:list, user:nil)).not_to be_valid
  end

  it "must have a user" do
  	expect(build(:list, board:nil)).not_to be_valid
  end
end
