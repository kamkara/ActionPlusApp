class Post < ApplicationRecord
  belongs_to :user
  has_rich_text :content

  STATUS= ["Brouillon","Public", "Privé", "membres"]
  
  validates :title,
            :content,
            :status,
            :user_id,
            :slug, presence: true

  
   #SLUG
  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    title_changed?
  end   
  
end
