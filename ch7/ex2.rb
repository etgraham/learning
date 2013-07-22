while true
  puts "What would you like to ask Grandma?"
  question = gets.chomp
  if question == 'BYE'
	break
  end
  if question == question.upcase
  puts "NO, NOT SINCE 1938!"
  else 
  puts "HUH?! SPEAK UP, SONNY!"
  end
    puts
end