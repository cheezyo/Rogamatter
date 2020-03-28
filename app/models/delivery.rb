class Delivery < ApplicationRecord

	def name 
		"Delivery #" + self.id.to_s
	end
	def get_obj 
		

		klass = Object.const_get self.klass

		klass.find(self.klass_id)

	end

	def comments
		Comment.where(klass: self.class.name, klass_id: self.id ).order(created_at: :asc)
 
	end

	def got_comments? 
		if Comment.where(klass: self.class.name, klass_id: self.id ).count > 0 
			true
		else
			false
		end

	end

	def get_comment
		cmt = Comment.where(klass: self.class.name, klass_id: self.id ).order(created_at: :desc).first
		str = cmt.comment + " | " + cmt.created_at.strftime("%d-%m-%y %H:%M")
		return str
	end




	def company 

	end

end
