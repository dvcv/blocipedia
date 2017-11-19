class DowngradesController < ApplicationController

  def downgrade_to_standard
    if current_user.premium?
      current_user.standard!
    end

    current_user.wikis.each do |wiki|
      wiki.private = false
      wiki.save
    end

    redirect_to :back
  end

end
