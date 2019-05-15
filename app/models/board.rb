class Board < ApplicationRecord
  belongs_to :user
  has_many :lists, -> { order(position: :asc)}, dependent: :destroy
  has_many :cards, dependent: :destroy
  validates_presence_of :title
end
