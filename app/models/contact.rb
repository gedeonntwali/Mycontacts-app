class Contact < ApplicationRecord

  def friendly_update_at
    updated_at.strftime("%B %e, %Y")
  end

  def full_name
    full_name = first_name.to_s + " " +  last_name.to_s
  end



end
