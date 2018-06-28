class Photo < ApplicationRecord
  belongs_to :advertisement

  has_attached_file :image, :styles => { :medium => "500x500",  :small => "200x200", :thumb => "100x100" }


# has_attached_file :image,
#     :styles => lambda { |a|
#                         { :thumb => "100x100#",
#                           :user_defined => "#{a.instance.width}x#{a.instance.height}#" }
#                           { :small => "300x300#",
#                           :user_defined => "#{a.instance.width}x#{a.instance.height}#" }
#                           { :medium => "500x500#",
#                           :user_defined => "#{a.instance.width}x#{a.instance.height}#" }
#                       }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


end
