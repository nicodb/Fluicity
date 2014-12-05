class WishesController < ApplicationController
  def new
    @wish = Wish.new()
    if session[:user_id]
      begin
        @wish.user = User.find(session[:user_id])
      rescue
      end
    end
  end

  def show
    @wish = Wish.find(params[:id])
  end

  def create
    if params[:wish][:email]
      @user = User.find_or_create_by(email: params[:wish][:email])
    else
      @user = User.find(params[:wish][:user_id])
    end

    @city = City.find_or_create_by(name: params[:wish][:city])
    if @wish = @user.wishes.create(content: params[:wish][:content], city: @city)
      redirect_to wish_path(id: @wish.id)
    else
      render :new
    end
  end

  def index
    @wishes = Wish.all
  end

  def upvote
    begin
      @user = User.find(session[:user_id])
      @wish = Wish.find(params[:id])
      @wish.liked_by @user
      redirect_to wishes_path, notice: "Merci! votre VOTE a été compté."
    rescue
      redirect_to wishes_path, alert: "Merci de specifier votre email avant de VOTER"
    end
  end

end
