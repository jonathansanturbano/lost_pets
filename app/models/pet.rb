class Pet < ApplicationRecord
  SPECIES = ["horse", "chicken", "dog", "alpaca", "cat", "huntsman", "perroquet"]

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    "#{(Date.today - found_on).to_i} days ago"
  end
end
