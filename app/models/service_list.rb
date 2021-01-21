class ServiceList < ApplicationRecord
  belongs_to :service
  belongs_to :checkin
  belongs_to :room
end
