class List < ApplicationRecord
  acts_as_list scope: :board
  belongs_to :user
  belongs_to :board
  has_many :cards, -> { order(position: :asc)}, dependent: :destroy
  validates_presence_of :title
end
