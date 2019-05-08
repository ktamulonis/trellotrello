FactoryBot.define do
  factory :list do
    user { create :user }
    board { create :board }
    title { "MyString" }
  end
end
