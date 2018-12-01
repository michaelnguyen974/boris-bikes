
class Bike
	def report_broken
		@broken_bike = true
	end 
	
	def broken?
		@broken_bike
	end 

	def working?
		true 
	end 
end 



# def report_broken(@bike_status = 'working')
# 	if @bike_status = 'working'
# 		 true
# 	else
# 		false 
# end 

