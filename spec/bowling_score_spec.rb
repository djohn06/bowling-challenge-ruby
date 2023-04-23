require "bowling_score"

RSpec.describe BowlingScore do
  context "Frames One to Nine" do
    it "returns a frame score of zero" do
			repo = BowlingScore.new
			repo.score(0,0)
			expect(repo.current_frame).to eq 0
		end

		it "records total score in array" do
			repo1 = BowlingScore.new
			repo2 = BowlingScore.new
			repo1.score(0,3)
			repo2.score(4,5)
			expect(repo1.total_score).to eq [3]
			expect(repo2.total_score).to eq [9]
		end

		it "recognises spare frame" do
			repo1 = BowlingScore.new
			repo2 = BowlingScore.new
			repo1.score(6,4)
			repo1.total_score
			repo2.score(5,3)
			expect(repo2.total_score).to eq 15
		end
	end


end