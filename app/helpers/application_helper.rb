module ApplicationHelper
  
  def provide?
    !provide(:title)
  end
end 
