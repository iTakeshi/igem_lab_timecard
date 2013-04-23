class IndexController < ApplicationController
  def index
    @users = User.order('yomi ASC')
  end
end
