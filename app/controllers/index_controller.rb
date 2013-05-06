class IndexController < ApplicationController
  def index
    @users = User.order('yomi ASC')
    @working = User.working
  end
end
