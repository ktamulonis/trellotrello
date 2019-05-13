class Card < ApplicationRecord
  acts_as_list scope: :list

  belongs_to :board
  belongs_to :list
  belongs_to :user
  validates_presence_of :title
end
