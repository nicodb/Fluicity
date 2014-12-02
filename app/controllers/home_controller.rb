class HomeController < ApplicationController
  Role = Struct.new(:text, :value)

  def index
    prepare_user
  end

  def thanks

  end

  def contact
    prepare_user

  end

  def wish

  end

  def prepare_user
    @user = User.new
    @roles = [
      Role.new("Je suis Citoyen", "citizen"),
      Role.new("Je suis un Elu", "representative"),
      Role.new("Je représente une organisation", "organization")
    ]

  end

end



