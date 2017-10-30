class Voter < ApplicationRecord
  belongs_to :competitor, optional: true
end