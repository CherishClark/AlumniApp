class Post < ApplicationRecord

validates_presence_of :title, :body

  belongs_to :user, optional: true
  acts_as_votable
  has_many :comments, dependent: :destroy

   after_initialize :set_defaults

  def set_defaults
    self.images ||= "http://placehold.it/350x200"
  end
end
