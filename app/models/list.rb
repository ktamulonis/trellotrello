class List < ApplicationRecord
  belongs_to :user
  belongs_to :board
  has_many :cards, dependent: :destroy
  validates_presence_of :title
end
