class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_favoritor
  acts_as_favoritable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  validates :full_name, presence: false, length: {maximum: 65} #HR - Require a full field for the fullname



  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :default_url => "/assets/default_image.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


  has_many :advertisements

end
