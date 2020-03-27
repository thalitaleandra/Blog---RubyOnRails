class Post
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  include Mongoid::Paperclip
  has_mongoid_attached_file :image, styles: { medium: "640x423#", thumb: "100x100>" } 
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
