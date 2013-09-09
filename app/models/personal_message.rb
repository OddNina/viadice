class PersonalMessage < ActiveRecord::Base

  # relationships
  has_and_belongs_to_many :users
  
end
