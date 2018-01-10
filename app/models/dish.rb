class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :loyal_users,
             :through => :bookmarks,
             :source => :user

  has_many   :bookmarked_venues,
             :through => :bookmarks,
             :source => :venue

  # Validations

end
