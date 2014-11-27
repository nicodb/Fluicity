class HomeController < ApplicationController
  Role = Struct.new(:text, :value)

  def index
    @user = User.new
    @roles = [
      Role.new("Je suis Citoyen", "citizen"),
      Role.new("Je suis un élu", "representative"),
      Role.new("Je représente une organisation", "organization")
    ]
  end

  def thanks

  end

  def contact

  end

  def wish

  end

end



