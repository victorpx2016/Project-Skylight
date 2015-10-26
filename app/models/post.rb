class Post < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  
  include PublicActivity::Common
  # tracked except: :update, owner: ->(controller, model) { controller && controller.current_user }
  
  # validates :body, :presence => { :message => "You need to title your topic." }
  
  belongs_to :user
  
  has_many :tags, :dependent => :destroy
  
  has_many :comments, :dependent => :destroy
  
  accepts_nested_attributes_for :tags, :allow_destroy => :true

end
