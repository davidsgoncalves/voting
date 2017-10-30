class Competitor < ApplicationRecord
  has_many :voters

  def votes
    self.voters.count
  end
end