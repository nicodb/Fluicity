class User < ActiveRecord::Base
  has_many :wishes
  belongs_to :city
end
