class Trip < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :destination

    serialize :description, Array
end
