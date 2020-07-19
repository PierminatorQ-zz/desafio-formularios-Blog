class Post < ApplicationRecord

    validates :title, presence: true
    validate :contenido_without_spoilers


    def contenido_without_spoilers
        if content.include?("spoiler") == true
            content.gsub! 'spoiler', ' '
            
        end
    end
end
