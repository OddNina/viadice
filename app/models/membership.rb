class Membership < ActiveRecord::Base
  belongs_to :profile, inverse_of: :memberships, class_name: 'Profile'
  belongs_to :group, inverse_of: :memberships
end
