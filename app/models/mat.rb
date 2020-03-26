class Mat < ApplicationRecord
	has_many :company_mats


	def category 
		["Nylon", "Logo", "Bæsj"]
	end


	def name 
		self.mat_type + " " + self.mat_size
	end

	
end
