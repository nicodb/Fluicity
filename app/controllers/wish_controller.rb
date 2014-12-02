class WishController < ApplicationController
  def new
    @wish = Wish.new(user_params.merge({user_id: @user.id}))

  end

  def create

  end

  def index

  end

end
