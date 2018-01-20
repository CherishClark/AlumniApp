class Post < ApplicationRecord
  belongs_to :user, optional: true
  acts_as_votable

end
