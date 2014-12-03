class WishesController < ApplicationController
  def new
    @wish = Wish.new()
    if session[:user_id]
      @wish.user = User.find(session[:user_id])
    end
  end

  def create
    if params[:wish][:email]
      @user = User.find_or_create_by(email: params[:wish][:email])
    else
      @user = User.find(params[:wish][:user_id])
    end

    @city = City.find_or_create_by(name: params[:wish][:city])
    @user.wishes.create(content: params[:wish][:content], city: @city)
    redirect_to wishes_path
  end

  def index
    @wishes = Wish.all
  end

end
