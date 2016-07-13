class CoreController < ApplicationController
  def index
  	@posts = Post.all
  end
end
