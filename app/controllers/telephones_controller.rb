class TelephonesController < ApplicationController

  def index
      @friend = Friend.find(params[:friend_id])
      @telephones = Telephone.where(friend:@friend)
      @newTel = Telephone.new(cellphone:false)
  end

  def destroy
    @telephone = Telephone.find(params[:id])
    f = @telephone.friend
    @telephone.destroy
    redirect_to friend_telephones_path
  end

  def telephone_params
    params.require(:telephone).permit(:number, :cellphone, :friend)
  end

  def create
    @newTel = Telephone.new(telephone_params)
    @newTel.friend = Friend.find(params[:friend_id])
    if @newTel.save
      redirect_to friend_telephones_path, notice: "登録しました"
    else
      redirect_to friend_telephones_path, notice: "失敗しました"
    end
  end

  def update
  end


end
