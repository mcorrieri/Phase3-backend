class Vaccine < ActiveRecord::Base
    has_many :statesvaccines
    has_many :states, through: :statesvaccines
    
end