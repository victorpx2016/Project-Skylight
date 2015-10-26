class User < ActiveRecord::Base
  include Amistad::FriendModel
  
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :posts, :dependent => :destroy
  
  has_many :comments, :dependent => :destroy
end
