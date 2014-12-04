class Wish < ActiveRecord::Base
  belongs_to :user
  belongs_to :city

  acts_as_votable

  validates_presence_of :content

  def email
  end
end
