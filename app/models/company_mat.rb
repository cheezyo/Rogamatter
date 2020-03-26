class CompanyMat < ApplicationRecord
	belongs_to :company
	belongs_to :mat


	def day
		["Mandag", "Tirsdag", "Onsdag", "Torsdag", "Fredag"]

	end


	def change_interval
		[1,2,3,4]
	end
end
