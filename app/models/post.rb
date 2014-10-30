class Post < ActiveRecord::Base

  has_many :attachments

  auto_html_for :text do
    html_escape
    image
    youtube(:width => 600, :height => 450, :autoplay => false)
    vimeo(:width => 600, :height => 450, :autoplay => false)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end


  validates :title, presence: true,
            length: { minimum: 5 }
end
