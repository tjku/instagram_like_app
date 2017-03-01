class Photo < ApplicationRecord
  has_attached_file :image, styles: { medium: '1000>', thumb: '300>' }

  validates_attachment :image, presence: true,
                               content_type: { content_type: %r{\Aimage\/.*\z} }

  default_scope { order created_at: :desc }
end
