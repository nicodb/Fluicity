class UsersController < ApplicationController

  def create
    @city = City.find_or_create_by(name: params[:city])

    @user = User.new(user_params.merge({city_id: @city.id}))
    if @user.save
      if @user.role == 'citizen'
        UserMailer.citizen_welcome_email(@user).deliver
      else
        # TODO
      end
      redirect_to thanks_path
    else
      render action: 'home/index'
    end
  end

  def user_params
    params.require(:user).permit(:email, :role)
  end

end
