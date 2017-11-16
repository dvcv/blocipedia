module WikisHelper
  def user_is_authorized_for_wiki?(wiki)
    current_user && (current_user == wiki.user || current_user.admin?)
  end
  def user_is_authorized_for_delete_button?(wiki)
    current_user.admin? || (current_user.premium? && current_user == wiki.user)
  end
end
