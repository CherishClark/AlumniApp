    class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_voter
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :comments, dependent: :destroy

  def set_defaults
    self.profile_image ||= "http://placehold.it/350x200"
  end
end
