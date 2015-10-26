class Friendship < ActiveRecord::Base
  include PublicActivity::Model
  tracked
end
