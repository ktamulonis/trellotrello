require 'rails_helper'

RSpec.describe Board, type: :model do
  it "has a factory" do
  	expect(create :board).to be_valid
  end
end
