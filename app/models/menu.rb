class Menu < ApplicationRecord
  acts_as_list
  validates :title, presence: true, length: { maximum: 50 }
  validates :price, presence: true, numericality: { only_integer: true }

  scope :sorted, -> { order(position: :asc) }
end
