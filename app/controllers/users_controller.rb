class UsersController < ApplicationController
  before_action :set_user, only: %i(lab home out disable)

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: '登録しました。'
    else
      render action: :new
    end
  end

  def lab
    @user.lab
    redirect_to root_path, notice: 'In the fields of observation chance favors only those minds which are prepared.'
  end

  def home
    @user.home
    redirect_to root_path, notice: 'お疲れ様でした'
  end

  def out
    @user.out
    redirect_to root_path, notice: '休息も仕事のうち'
  end

  def disable
    @user.disable
    redirect_to root_path, notice: 'この分はいつ働いてもらおうかしらね…'
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit %i(name yomi)
  end
end
