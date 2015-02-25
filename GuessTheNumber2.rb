#-----------------------------------------------------------------
#
# Script Name: GuessTheNumber
# Version:     2.0     
# Author:      Brian Pedigo     
# Date:        Feb 2015      
# Description: This script is a number guessing game.     
#                           
#-----------------------------------------------------------------

class Game

	def cls
	
	system 'cls'
	
	end
	
	def pause
	
	STDIN.gets
	
	end
	
	def greeting
	
		The_game.cls
	
		print "\n\n\n\t\t W E L C O M E  T O  T H E  R U B Y  N U M B E R  G U E S S I N G  G A M E!\n\n\n\n\n\n " 
		
		print %Q{\t\t\t\t 	.----------------. 
					| .--------------. |
					| |    ______    | |
					| |   / _ __ `.  | |
					| |  |_/____) |  | |
					| |    /  ___.'  | |
					| |    |_|       | |
					| |    (_)       | |
					| |              | |
					| '--------------' |
					'----------------' 
				
		}
		
		
		print "\n\n\n\n\n\n\n\nPress Enter to continue"
	
		The_game.pause
	
	end
	
	def instructions
	
	The_game.cls
	puts "This game randomly generates a number and challenges you to guess it"
	puts "After each guess the game will provide you feed back of if you guess was"
	puts "too low or too high. You may take as many turns as you need to in order to"
	puts "find the secret number. Good luck!"
	The_game.pause
	
	end

	def RandomNumber
	
		loop do
			
			The_game.cls
			puts "The range of numbers are:"
			puts "A. 1 to 10"
			puts "B. 1 to 100"
			puts "C. 1 to 1,000"
			puts "you can quit any time by typing Q."
			answer = gets().chop!.downcase
			case answer
			
				when "a"
				
					return 1+rand(10)
					
					
				when "b"
				
					return 1+rand(100)
					
					
				when "c"
				
					return 1+rand(1000)
					
				
				when "q"
				
					The_game.bye
				
				else
					
					The_game.cls
					puts "Invalid choice!"
					The_game.pause
			
			
			end 
		end
		
	end
	
	def plays
	
		
	
		$number = RandomNumber()
		
		
		loop do
		
			The_game.cls
		
			reply = The_game.asks("Enter your guess and press the enter key or (q) to quit\n")
		
			if reply < 1 or reply > 1000 then
		
				redo
		
			end
			
			The_game.inc("NumOfGuesses", 1)
			
			if reply == $number 
			
				The_game.cls
				
				print "You have guessed the number! Good JOB!"
				
				The_game.pause
				
				break
				
				
			elsif reply < $number
				
				The_game.cls
				
				print "Your guess was too low!"
				
				The_game.inc("low", 1)
				
				The_game.pause
				
			else
				
				The_game.cls
				
				print "Your guess was too high!"
				
				The_game.inc("high", 1)
				
				The_game.pause
			
			end				
		end	
	end

	def bye
		
		The_game.cls
		
		puts "\t\tThank you for playing the Ruby Guessing Game\n\n\n\n"
		puts "\n\t\t\tDeveloped by Brian Pedigo"
		#puts "\n\t\t\t While learning Ruby 2015!"
		puts "\n\t\t More games at https://github.com/Bpedigo"
		
		The_game.pause
		exit
	
	
	end
	
	def stats 
	
		The_game.cls
        puts "\n Game Statistics"
        puts "-----------------------------------------------------"
        puts "The secret number was #{$number}."
        puts "You guessed it in #{@@NumOfGuesses}."
        puts "Number of guess that were too low #{@@low}."
        puts "Number of guess that were too high #{@@high}."
        puts "Total number of games played is #{@@gametotals}." #number of games played
        puts "-----------------------------------------------------"
        puts "\n\n\n Press Enter to continue"
        The_game.pause
	
	end
	
	def asks (message)
		puts message
		echo = gets.chop!.downcase
		if echo == "q"
	
		The_game.bye
	
		else
	
		return echo.to_i
		
		end
		
	end
	
	def initialize 
		
		#$answer = " "
		@@number = 0
		@@NumOfGuesses = 0
		@@low = 0
		@@high = 0
		@@gametotals = 0
	
	end
	
	def inc(string, number)
	
		case string
		
		when "NumOfGuesses"
			
			@@NumOfGuesses += number
			
		when "low"
				
			@@low += number
			
		when "high"
			
			@@high += number
			
		when "gametotals"
				
			@@gametotals += number
						
		end
		
	end
	
	def reset
	
		@@NumOfGuesses = 0
		@@low = 0
		@@high = 0
	
	end
	
end


# Public Void Main

	The_game = Game.new
	
	The_game.greeting

	answer = " " 
	
		loop do
		
			The_game.cls
			
			print "Are you ready to play the Ruby Number Guessing Game? (y/n)"
			
			answer = gets.chop!.downcase
			
			break if answer == "y" || answer == "n"
		
		end
		
		if answer == "n"
		
			puts "Okay maybe another time good bye!"
			
		else
		
			The_game.instructions
			
				loop do
				
					The_game.plays
				
					The_game.cls
					
					The_game.inc("gametotals", 1)
					
					The_game.stats
					
					The_game.cls
				 
					print "Would you like to go another round?(y/n)"
					
					playAgain = gets.chop!.downcase
					
					The_game.reset
				
					break if playAgain == "n"
				
				end
				
			The_game.bye
			
		end
		
	
	
	
	

