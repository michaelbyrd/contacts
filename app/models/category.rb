class Category < ActiveRecord::Base
  has_many :numbers
  has_many :email_addresses
  has_many :addresses
end
