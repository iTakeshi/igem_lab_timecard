module UsersHelper
  def status_with_color(user)
    label_type = case user.status
                 when 0
                   ""
                 when 1
                   "label-success"
                 when 2
                   "label-warning"
                 end
    content_tag(:span, user.status_to_str, class: "label #{label_type}")
  end
end
