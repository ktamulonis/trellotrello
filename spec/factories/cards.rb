FactoryBot.define do
  factory :card do
    board { create :board }
    list { create :list }
    user { create :user }
    title { "MyString" }
    description { "MyText" }
  end
end
