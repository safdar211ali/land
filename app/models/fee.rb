class Fee < ActiveRecord::Base
  validates_presence_of :plan,:urplan,:duration,:urduration,:feeamount
  validates_numericality_of :feeamount
end
