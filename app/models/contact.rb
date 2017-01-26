class Contact < ApplicationRecord

  def friendly_update_at
    updated_at.strftime("%B %e, %Y")
  end



end
