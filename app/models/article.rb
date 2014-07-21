class Article < ActiveRecord::Base
                    
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
                                

  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                  length: { minimum: 3 }
  has_many :favorites
  has_many :favorited_by, through: :favorites  
  belongs_to :user
                  

end