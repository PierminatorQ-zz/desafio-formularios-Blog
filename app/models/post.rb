class Post < ApplicationRecord

    validates :title, presence: true
    validates :image, presence: true
    validates :content, presence: true
    validate :contenido_without_spoilers
    default_scope {where ("LENGTH(content) > 1")}
    scope :ordered_by_date, -> { order(created_at: :desc) }


    def contenido_without_spoilers
        if content.include?("spoiler") == true
            content.gsub! 'spoiler', ' '
            
        end
    end
end
