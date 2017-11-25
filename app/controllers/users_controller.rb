class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    collaborations = Collaborator.where(user_id: @user.id)
    @collab_wikis = Wiki.where(id: collaborations.pluck(:wiki_id))
  end
end
