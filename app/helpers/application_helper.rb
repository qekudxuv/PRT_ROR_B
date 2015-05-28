module ApplicationHelper

  def default_title(title)
     if title.presence
       title
     else
       "Happy Coding"
     end
  end
end
