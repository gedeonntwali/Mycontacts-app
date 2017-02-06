class Contact < ApplicationRecord

  has_many :group_contacts
  has_many :groups, through: :group_contacts

  def friendly_update_at
    updated_at.strftime("%B %e, %Y")
  end

  def full_name
    full_name = first_name.to_s + " " +  last_name.to_s
  end



end
