class MatInventory < ApplicationRecord
	belongs_to :mat
	belongs_to :company_mat
end
