class Mop < ApplicationRecord
	has_many :company_mops
	has_many :mop_inventories
	after_initialize :init


    def init
      self.sold  ||= 0
      self.inventory ||= 0
  end

	def category 
		["myk mopp", "digg mopp", "Sånn mopp"]
	end

	def check_if_sold?
		if self.company_mops.count > 0 

			return false 
		end

		return true
	end

	def name 
		self.mop_type + " " + self.size
	end



	def remaining
		self.inventory - self.mop_inventories.pluck(:sold).sum
	end

end
