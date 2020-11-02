class FriendController < ApplicationController
  def show
    @friend = Friend.find(params[:id])
    @telephones = Telephone.where(friend:@friend)
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def new
  end

  def create
  end


  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_to root_path, notice:"削除しました"
  end

end