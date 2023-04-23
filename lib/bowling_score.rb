class BowlingScore
	def initialize
		@total_score = []
	end

	def score(score1, score2)
		@score1 = score1.to_i
		@score2 = score2.to_i
	end

	def current_frame
		@frame_score = @score1 + @score2
	end

	def total_score
		if @frame_score < 10
			@total_score << current_frame
		elsif @score1 == 10
			strike
		else
			spare
		end
	end

	def spare
		last_points = @total_score.last
		spare_score = last_points + @score1
		@total_score << spare_score
	end

end