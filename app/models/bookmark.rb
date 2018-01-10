class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :dish

  belongs_to :venue

  # Indirect associations

  # Validations

end
