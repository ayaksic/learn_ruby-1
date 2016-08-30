class Timer
	attr_accessor :seconds
	
	def initialize
		@seconds = 0
	end
	
	hour = 0
	minute = 0
	second = 0
	
	def time_string
		if @seconds<10
			return '00:00:0'+@seconds.to_s
		elsif @seconds<60
			return '00:00:'+@seconds.to_s
		elsif @seconds<599
			minute=@seconds/60
			second=@seconds-(minute*60)
			if second<10
				return '00:0'+minute.to_s+':0'+second.to_s
			else
				return '00:0'+minute.to_s+':'+second.to_s
			end
		else
			hour=@seconds/60/60
			minute=(@seconds-(hour*60*60))/60
			second=@seconds-(hour*60*60)-(minute*60)
			if second<10
				return '0'+hour.to_s+':0'+minute.to_s+':0'+second.to_s
			else
				return '0'+hour.to_s+':0'+minute.to_s+':'+second.to_s
			end
		end
	end
end