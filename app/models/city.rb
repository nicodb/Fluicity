class City < ActiveRecord::Base
  has_many :users
  has_many :wishes
end
