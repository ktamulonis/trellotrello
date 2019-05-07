FactoryBot.define do
  factory :board do
    title { "MyString" }
    user { FactoryBot.create(:user) }
  end
end
