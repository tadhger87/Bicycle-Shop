class StaticPagesController < ApplicationController
  
  
def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
  

  def help
  end
  
  def about
  end
  
  def contact
  end
  
  def bicyles
  end
  
  def parts
  end
  
  def gear
  end
  
  def repairs
  end
  
end
