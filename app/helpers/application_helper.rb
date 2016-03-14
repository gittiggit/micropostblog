module ApplicationHelper
  def full_title(page_title = " ")
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | "+ base_title
    end
  end

  def demo_helper_app_helper_file
    name = "Md. Mahmudur Rahman"
  end
end
