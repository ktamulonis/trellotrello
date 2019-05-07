require 'rails_helper'

RSpec.describe Board, type: :model do
  it "has a factory" do
  	expect(create :board).to be_valid
  end

  it "has a user" do 
    expect(build :board, user:nil).not_to be_valid
  end

end
