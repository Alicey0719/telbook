class Friend < ApplicationRecord

    has_many :telephones

    validates :name, presence:true, length:{maximum:10}
end
