class TopController < ApplicationController
  def index
    @friends = Friend.order("id").page(params[:page]).per(3)

  end

  def show
    @friend = Friend.find(params[:id])
  end

  def new
  end

  def edit
  end


end
