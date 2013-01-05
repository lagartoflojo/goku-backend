class Item < ActiveRecord::Base
  belongs_to :collection
  attr_accessible :description, :name

  validates :description,
    presence: true
end
