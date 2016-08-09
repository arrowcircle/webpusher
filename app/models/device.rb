class Device < ApplicationRecord
  validates :token, presence: true, uniqueness: true
  has_many :subscriptions, dependent: :destroy
  has_many :lists, through: :subscriptions
  enum device_type: [:apple, :google, :windows, :amazon]
end
