class Post < ApplicationRecord

validates_presence_of :title, :body

  belongs_to :user, :topic, optional: true
  acts_as_votable
  has_many :comments, dependent: :destroy

end
