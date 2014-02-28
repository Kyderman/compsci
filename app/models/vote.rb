class Vote < ActiveRecord::Base
  belongs_to :post
  
  def isUpvote?
    if(self.upvote)
      return true
    end
    return false
  end
  
  def isDownvote?
    if(self.upvote)
      return false
    end
    return true
  end
  
  def isValid?
    if(a = self.post.votes.where(:ip => self.ip).first)
      if(a.isUpvote?)
        if(self.isUpvote?)
          self.destroy
          a.destroy
        else
          a.destroy
          self.save
        end
      else
        if(self.isUpvote?)
          a.destroy
          self.save
        else
          self.destroy
          a.destroy
        end
      end
    else
      self.save
      
    end
  end
  
  
end
