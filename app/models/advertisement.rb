class Advertisement <ActiveRecord::Base
	validates :name, :price, :presence => true
end