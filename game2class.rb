#Keep the commeneted out part, it shows alot of what the properly running code looked like before I put it into methods and classes
class Game 
	attr_reader :start_time
	attr_accessor :end_time, :collection

	def initialize
		@start_time = Time.now 
	end 

	def generate_collection(type)
		@type = type
		case type
		when "numbers"
			[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]
		when "colors"
			["blue", "purple", "red", "yellow", "green", "pink"] 
		when "pets"
			["lizard", "dog", "cat", "bird", "snake", "pig", "horse", "monkey"]
		end
	end

	def check_if_in_collect(item)
		@collection.map! do |x|  
			x.to_s 
		end

		if item == "Give up"
			puts "You Lose." 
			:break 
		elsif @collection.include?(item)
			puts "#{item} is one of John's #{@type}" 
			@collection.delete(item)
		else
			puts "#{item} is either not one of John's #{@type}, or you have already used it.  Please try again or enter 'Give up' to exit"
		end
	end 
end


new_game = Game.new


new_game.collection = new_game.generate_collection("numbers")
loop do 
	if new_game.collection.count == 0 
		puts "Congratulations you completed the first game, now its time to guess John's favorite colors!!" 
		break  
	end

	puts "Please enter a number!  Don't use the same number twice!"
	if new_game.check_if_in_collect(gets.chomp) == :break
		break
	end
end


# if number_userinfo(gets.chomp, john) == :break
# 	break
# end
 #    if item == "Give up"
	# 	puts "You Lose." 
	# 	:break 
	# elsif collection.include?(item)
	# 	puts "#{item} is one of John's numbers" 
	# 	collection.delete(item)
	# else
	# 	puts "#{item} is either not one of John's colors, or you have already used it.  Please try again or enter 'Give up' to exit"
	# end


new_game.collection = new_game.generate_collection("colors")
loop do
	if new_game.collection.count == 0 
		puts "Congratulations, you completed the second game!  Now its time to guess John's pets in the last game" 
		break 
	end

	puts "Please enter a color!  Don't use the same color twice!"
	if new_game.check_if_in_collect(gets.chomp) == :break
		break
	end
end 
# # 	if color == "Give up"
# # 		puts "You Lose." 
# # 		break 
# # 	elsif john.include?(item)
# # 		puts "#{item} is one of John's colors!" 
# # 		john.delete(item) 
# # 	else 
# # 		puts "#{item} is either not one of John's colors, or you have already used it.  Please try again or enter 'Give up' to exit"
# # 	end
# # end


new_game.end_time = Time.now
final_time = new_game.end_time.round - new_game.start_time.round
# loop do
# 	if john.count == 0 
# 		puts "Congratulations, you completed the last game!" 
# 		
# 		puts "And all three games took you about #{final_time} seconds"
# 		break 
# 	end
# end 

new_game.collection = new_game.generate_collection("pets")
loop do
	if new_game.collection.count == 0 
		new_game.end_time = Time.now
		final_time = new_game.end_time.round - new_game.start_time.round
		puts "Congratulations, you completed the final game!" 
		puts "And it took you about #{final_time} seconds!"
		break 
	end

	puts "Please enter a pet!  Don't use the same pet twice!"
	if new_game.check_if_in_collect(gets.chomp) == :break
		break
	end
end  

# 	puts "Please enter a type of pet!  Don't use the same pet twice!"
# 	pets = gets.chomp
# 	if pets == "Give up"
# 		puts "You Lose." 
# 		break 
# 	elsif john.include?(pets)
# 		puts "#{pets} is one of John's pets!" 
# 		john.delete(pets) 
# 	else 
# 		puts "#{pets} is either not one of John's pets, or you have already used it.  Please try again or enter 'Give up' to exit"
# 	end
# end 
# old game below 

