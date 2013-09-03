def chime &block
	y = Time.new.hour
	
	if y == 0
		y = 12
	end
	
	if y >= 13
		y = y-12
	end
	
	y.times do
		block.call
	end
end

chime do
  puts 'DONG!'
end
