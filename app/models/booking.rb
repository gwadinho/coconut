class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :island
  validates :start_date, presence: true
  validates :ending_date, presence: true
  validates :total_price, presence: true
  validate :end_date_after_start_date?

  def end_date_after_start_date?
    if self.ending_date < self.start_date
      errors.add(:ending_date, "cannot be before start date ")
    end
  end
end

