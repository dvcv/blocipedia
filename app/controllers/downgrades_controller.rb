class DowngradesController < ApplicationController

  def downgrade_to_standard
    if current_user.premium?
      current_user.standard!
    end
    redirect_to :back
  end

end
