class Friendship < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"

  scope :accepted, -> { where(accepted: true) }

  def accept
    update(accepted: true)
  end

  # include PgSearch::Model
  # pg_search_scope :search_by_name,
  #   against: [ :forename ],
  #   using: {
  #     tsearch: { prefix: true }
  #   }
end
