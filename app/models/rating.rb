class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  belongs_to :image
end
