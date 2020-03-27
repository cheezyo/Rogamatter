class Mat < ApplicationRecord
	has_many :company_mats
	has_many :mat_inventories
	after_initialize :init


    def init
      self.sold  ||= 0
      self.inventory ||= 0
  end

	def category 
		["Nylon", "Logo", "Bæsj"]
	end

	def check_if_sold?
		if self.company_mats.count > 0 

			return false 
		end

		return true
	end

	def name 
		self.mat_type + " " + self.mat_size
	end



	def remaining
		self.inventory - self.mat_inventories.pluck(:sold).sum
	end


	
end
