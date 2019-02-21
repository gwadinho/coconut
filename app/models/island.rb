class Island < ApplicationRecord
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  geocoded_by :name
  after_validation :geocode, if: :will_save_change_to_name?
end
