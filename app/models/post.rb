class Post < ActiveRecord::Base
  
  has_many :votes
  
  def getUpvotes
    return self.votes.where(:upvote => true).count
  end
  
  def getDownvotes
    return self.votes.where(:upvote => false).count
  end
  
  def getVoteLevel
    return getUpvotes - getDownvotes
  end
end
