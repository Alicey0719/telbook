class Telephone < ApplicationRecord

  belongs_to :friend, class_name: "Friend", foreign_key: "friend_id"

  validates :number, presence:true, 
    format:{with: /\A[0-9()-][0-9()-]*\z/, allow_blank:false},
    length:{minimum:8, maximum:20},
    uniqueness: {case_sensitive:false}

end
