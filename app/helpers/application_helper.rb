module ApplicationHelper
  def user_is_authorized_to_view_wikis?(wiki)
    wiki.private? == false || wiki.user == current_user || current_user.admin?
  end
end
