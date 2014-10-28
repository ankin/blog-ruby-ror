class Post < ActiveRecord::Base
  has_many :attachments

  validates :title, presence: true,
            length: { minimum: 5 }
end
