class MopInventory < ApplicationRecord
	belongs_to :mop
	belongs_to :company_mop
end
