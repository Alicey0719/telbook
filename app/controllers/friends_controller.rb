class FriendsController < ApplicationController
  def show
    @friend = Friend.find(params[:id])
    @telephones = Telephone.where(friend:@friend)
    @newTel = Telephone.new(cellphone:false)
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def new
    @friend = Friend.new(name:"name")
  end

  def create
    @friend = Friend.new(params[:friend])
    if @friend.save
      redirect_to root_path, notice: "登録しました"
    else
      render "new"
    end
  end

  def update
    @friend = Friend.find(params[:id])
    @friend.assign_attributes(params[:friend])
    if @friend.save
      redirect_to root_path, notice: "更新しました"
    else
      render "edit"
    end
  end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_to root_path, notice:"削除しました"

  end

end
