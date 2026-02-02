class Product < ApplicationRecord
    include Products::Notifications

    has_one_attached :featured_image
    has_rich_text :description
    validates :inventory_count, numericality: { greater_than_or_equal_to: 0 }
    validates :name, presence: true
end
