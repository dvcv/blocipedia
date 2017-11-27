module WikisHelper
  def user_is_authorized_for_wiki?(wiki)
    current_user && (current_user == wiki.user || current_user.admin?)
  end
  def user_is_authorized_for_private_button?(wiki)
    current_user.admin? || (current_user.premium? && current_user == wiki.user) || (current_user.premium? && current_page?(new_wiki_path(wiki)))
  end
  def user_is_authorized_to_view_collaborators?(wiki)
    current_uri = request.env['PATH_INFO']
    ((wiki.user == current_user && current_user.premium?) || current_user.admin?) && (!(current_page?(new_wiki_path) ||  current_uri == "/wikis"))
  end
end
