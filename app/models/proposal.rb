class Proposal < ActiveRecord::Base
  # attr_accessible :title, :body
  def upvote
    update_attributes(votes: votes + 1)
  end
end
