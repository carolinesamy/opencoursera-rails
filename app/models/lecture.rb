class Lecture < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  has_many :comments,:dependent=>:delete_all
  mount_uploader :attach, FileUploader
  acts_as_votable
  validates :title , :presence=>true
  validates :content , :presence=>true
  validates :attach , :presence=>true
end
