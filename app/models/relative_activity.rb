class RelativeActivity < ApplicationRecord
    validates :entry_date,uniqueness:true
    validates :meditation,:inclusion => 0..10,:numericality => {:only_integer => true}
    validates :exercise,:inclusion => 0..10,:numericality => {:only_integer => true}
    validates :reading,:inclusion => 0..10,:numericality => {:only_integer => true}
    validates :concentration,:inclusion => 0..10,:numericality => {:only_integer => true}
    validates :hard_working,:inclusion => 0..10,:numericality => {:only_integer => true}
    validates :metal_stability,:inclusion => 0..10,:numericality => {:only_integer => true}
    validates :self_confidene,:inclusion => 0..10,:numericality => {:only_integer => true}
    validates :time_management,:inclusion => 0..10,:numericality => {:only_integer => true}
    validates :universal_power,:inclusion => 0..10,:numericality => {:only_integer => true}

def totalScore
    return meditation+exercise+reading+concentration+hard_working+metal_stability+self_confidene+time_management+universal_power
end
end
