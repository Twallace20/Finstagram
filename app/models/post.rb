class Post < ApplicationRecord
mount_uploader :image, ImageUploader
mount_uploader :text, TextUploader
end
