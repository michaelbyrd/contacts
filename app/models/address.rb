class Address < ActiveRecord::Base
  has_many :street_addresses
  belongs_to :contact
  belongs_to :category
  belongs_to :state
end
