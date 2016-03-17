module ApplicationHelper
  
  # redcarpet parser
  def markdown(content)
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
    options = {
      autolink: true,
      no_intra_emphasis: true,
      strikethrough: true,
      superscript: true
    }
    Redcarpet::Markdown.new(renderer, options).render(content).html_safe
  end
  
  #active link helper
  def active_class(link_path)
    current_page?(link_path) ? "active" : ""
  end
 
end 
