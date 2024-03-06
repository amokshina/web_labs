class Number < ApplicationRecord
  validates :val, presence: true
  validates :val, uniqueness: true
end
