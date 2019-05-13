class Card < ApplicationRecord
  belongs_to :board
  belongs_to :list
  belongs_to :user
  validates_presence_of :title
end
