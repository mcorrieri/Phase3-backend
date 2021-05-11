class Statevaccine < ActiveRecord::Base
    belongs_to :state
    belongs_to :vaccine

end