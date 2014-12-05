class User < ActiveRecord::Base
  has_many :wishes
  belongs_to :city
  after_create :citizen_welcome_email


  private

  def citizen_welcome_email
    UserMailer.citizen_welcome_email(self).deliver
  end
end
