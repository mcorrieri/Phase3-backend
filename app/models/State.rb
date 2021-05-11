class State < ActiveRecord::Base
    has_many :statesvaccines
    has_many :vaccines, through: :statesvaccines
    
end