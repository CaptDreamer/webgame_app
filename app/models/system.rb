class System < ActiveRecord::Base
	BUILDSLOTS_CONST = 9

	validates :name, :locx, :locy, :buildslots, presence: true
	validates :locx, uniqueness: {scope: :locy}
	validates :locy, uniqueness: {scope: :locx}

	def loc
		puts "#{locx}, #{locy}"
	end

	def self.gen_world(num)
		completed = 0
		failed = 0
		num.times do |sys|
			x = rand(-10..10)
			y = rand(-10..10)
			sys = System.new()
			sys.name = "New System"
			sys.buildslots = BUILDSLOTS_CONST
			sys.locx = x
			sys.locy = y
			sys.save
			if sys.save
				completed += 1
			else
				failed += 1
			end
		end
		puts "Succeeded: #{completed}, Failed: #{failed}"
		self.gen_world(failed) if failed > 0
	end

end
