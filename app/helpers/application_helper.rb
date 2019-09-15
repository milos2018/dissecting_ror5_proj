module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      (link_to "Logout", destroy_user_session_path, method: :delete) +
        " | ".html_safe +
      (link_to "Edit", edit_user_registration_path)
    else
      (link_to "Register", new_user_registration_path) +
        " | ".html_safe +
      (link_to "Login", new_user_session_path)
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
end
