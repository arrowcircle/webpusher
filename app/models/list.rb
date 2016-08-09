class List < ApplicationRecord
  validates :list, presence: true, uniqueness: true
  has_many :subscriptions, dependent: :destroy
  has_many :devices, through: :subscriptions
end
