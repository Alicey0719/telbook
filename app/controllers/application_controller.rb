class ApplicationController < ActionController::Base


  private def setFriend(friend)
    @ffriend = friend
  end

  private def getFriend
    @ffriend
  end

end
