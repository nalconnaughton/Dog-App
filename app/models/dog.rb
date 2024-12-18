class Dog < ApplicationRecord
    mount_uploader :picture, PictureUploader

     # Test users input
     validates :name, presence: true, length: { maximum: 20 }
     validates :breed, presence: true, length: { maximum: 20 }
     validates :age, presence: true, length: { maximum: 10 }
     validates :gender, presence: true, length: { maximum: 20 }

end
