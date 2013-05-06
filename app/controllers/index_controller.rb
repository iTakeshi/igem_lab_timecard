class IndexController < ApplicationController
  def index
    @users = User.all
    @working = User.working
  end
end
