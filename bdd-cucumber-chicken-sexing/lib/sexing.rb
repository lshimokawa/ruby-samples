class Sexing
	attr_accessor :bumps

	def guess
		gender = 'unknown'
		factor = 0
		
		if bumps >= 1 and bumps <= 2
			gender = 'male'
			factor = 80
		elsif bumps >= 3 and bumps <= 4
			gender = 'female'
			factor = 80
		else 
		  gender = 'unknown'
		  factor = 0
		end

		{ gender: gender, factor: factor }
	end
end