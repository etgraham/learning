var = 1
while true
  puts "What would you like to ask Grandma?"
  question = gets.chomp
  if question == 'BYE'
	if var == 3
		break
	else
	var = var+1
	end
  else
   var = 1
  end
  if question == question.upcase
  puts "NO, NOT SINCE 1938!"
  else 
  puts "HUH?! SPEAK UP, SONNY!"
  end
    puts
end