module ApplicationHelper

  def flash_message
    flash.map do | key, msg |
      build_box key, msg
    end.join.html_safe
  end

  private

  def build_box key, msg
    content_tag :div, :data => {:alert => ''}, :class => "alert-box #{key}" do
      concat(msg )+
      concat(content_tag :a, "×",:class => 'close', :escape => true)
    end
  end
end
