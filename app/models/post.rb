class Post < ActiveRecord::Base
  
  has_many :votes
  
  def getUpvotes
    return self.vote.where(:upvote => true).count
  end
  
  def getDownvotes
    return self.vote.where(:upvote => true).count
  end
end
