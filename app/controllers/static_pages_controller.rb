class StaticPagesController < ApplicationController
  def home
          if signed_in?
              @micropost  = current_user.microposts.build
              @feed_items = current_user.feed
          end
  end

  

  def about 
   # NEW
  end

  def administrator
  end
  
end

