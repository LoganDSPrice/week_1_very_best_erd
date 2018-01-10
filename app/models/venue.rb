class Venue < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood,
             :required => false

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :beloved_users,
             :through => :bookmarks,
             :source => :user

  has_many   :bookmarked_dishes,
             :through => :bookmarks,
             :source => :dish

  # Validations

end
