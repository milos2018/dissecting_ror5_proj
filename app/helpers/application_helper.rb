module ApplicationHelper
  def login_helper(style = '')
    if !current_user.is_a?(GuestUser)
      (link_to "Logout", destroy_user_session_path, method: :delete, class: style) +
        " ".html_safe +
      (link_to "Edit", edit_user_registration_path, class: "#{style} #{active?(edit_user_registration_path)}")
    else
      (link_to "Register", new_user_registration_path, class: "#{style} #{active?(new_user_registration_path)}") +
        " ".html_safe +
      (link_to "Login", new_user_session_path, class: "#{style} #{active?(new_user_session_path)}" )
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}, and you are on #{layout_name.upcase} layout"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def sample_helper
    content_tag(:div, "My content", class: "my-class")
  end

  def generate_copyright_generator
    AnticViewTool::Renderer.copyright 'Milos Antic', 'All rights reserved'
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_me_path,
        title: 'About me'
      },
      {
        url: contact_path,
        title: 'Contact'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
      {
        url: portfolios_path,
        title: 'Portfolios'
      }
    ]
  end

  def nav_helper(tag_type, style = '')
    nav_links = ''
    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end
    nav_links.html_safe
  end

  def active? path
    "active" if current_page?(path)
  end
end
