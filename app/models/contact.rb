class Contact < ActiveRecord::Base
  has_and_belongs_to_many :groups
  has_many :numbers
  has_many :email_addresses
  has_many :addresses
  has_many :notes
end
