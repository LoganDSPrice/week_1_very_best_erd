class Venue < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood,
             :required => false

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
