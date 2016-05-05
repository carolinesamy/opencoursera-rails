class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :lectures,:dependent=>:delete_all
  has_many :courses,:dependent=>:delete_all
  has_many :comments,:dependent=>:delete_all

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum gender: { male:0, female:1}
  mount_uploader :image, ImageUploader
  #ana hna p2olo y3ml image 5od el validate mn folder image uploader
  acts_as_voter
  validates :name , :presence=>true
  validates :bdate , :presence=>true
  validates :email , :presence=>true
  validates :gender , :presence=>true
end
