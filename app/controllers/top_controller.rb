class TopController < ApplicationController
  def index
    @friends = Friend.all
  end

  def new
  end

  def edit
  end
end
