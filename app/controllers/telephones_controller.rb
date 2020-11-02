class TelephonesController < ApplicationController
  def new
  end

  def create
  end

  def destroy
    @telephone = Telephone.find(params[:id])
    f = @telephone.friend
    @telephone.destroy
    redirect_to f
  end
end
