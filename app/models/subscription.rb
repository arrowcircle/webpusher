class Subscription < ApplicationRecord
  belongs_to :list, counter_cache: :devices_count
  belongs_to :device
end
