class Board < ApplicationRecord
  belongs_to :user
  has_many :lists
  validates_presence_of :title
end
