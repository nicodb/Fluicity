class Wish < ActiveRecord::Base
  belongs_to :user
  belongs_to :city

  def email
  end
end
