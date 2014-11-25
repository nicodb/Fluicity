class UsersController < ApplicationController
  def create
    User.create(user_params)
    # TODO: create user

    # TODO: send mail to user
    # TODO: redirect to thanks
  end

  def user_params
    params.require(:user).permit(:email, :role, :city_id)
  end
end
