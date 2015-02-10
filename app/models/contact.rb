class Contact < ActiveRecord::Base
  has_and_belongs_to_many :groups
  has_many :numbers
  has_many :email_addresses
  has_many :addresses
  has_many :notes
  
  has_many :relationships, class_name: "Relationship", foreign_key: "primary_id"
  belongs_to :relationships, class_name: "Relationship", foreign_key: "secondary_id"
end
