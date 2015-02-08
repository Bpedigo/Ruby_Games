#-----------------------------------------------------------------
#
# Script Name: SupermanQuiz.rb
# Version:     1.0   
# Author:      Brian Pedigo     
# Date:        Jan 2015     
#
# Description: This ruby script demonstrates how to work with loops                                 
#			   when collecting user input through the creation of an
#              interactive quiz that evaluates the players knowledge of 
#              the Superman movie series.
#
#-----------------------------------------------------------------

class Quiz

	def cls
		system('cls')
	end
	
	def pause
		STDIN.gets
	end

	def welcome
	
		SuperQuiz.cls
		print "\t\t Welcome to the Superman Movie Trivia Quiz!"+
		"\n\n\n\n\n\n\n\n\nPress Enter to continue."
		SuperQuiz.pause
	
	end
	
	def instructions
		
		SuperQuiz.cls
		puts "INSTRUCTIONS:\n\n"
		puts "You will be presented with a series of multiple choice"
		puts "questions. To answer a question, type the letter of the"
		puts "corresponding anwers and press the Enter Key. Your grade"
		puts "will be displayed at the end of the test.\n\n\n"
		puts "Good Luck!\n\n\n\n\n\n\n\n\n"
		print "press enter to continue"
		SuperQuiz.pause
	
	end

	def display(question,q_a ,q_b,q_c,q_d,answer)
		
		loop do
		
			SuperQuiz.cls
			puts question +"\n\n"
			puts q_a
			puts q_b
			puts q_c
			puts q_d
			reply = gets().chop!.downcase
		
			if reply == answer
		
				$numRight += 1 
		
			end
		
			if reply == "a" or reply == "b" or reply == "c" or reply == "d"
			
				break ## closes the do loop
			else
			
				SuperQuiz.cls
				puts "Invalid choice try again"
				SuperQuiz.pause
		
			end
		end				
	end

	def grade
	
		SuperQuiz.cls
		
		if $numRight >= 3
		
			puts "You passed the Superman Movie Trivia Quiz!\n\n"
			puts "You correctly answered "+ $numRight.to_s + " questions"	
			puts "You have earned a rank of: Good Citizen" if $numRight == 3
			puts "You have earned a rank of: Side Kick" if $numRight == 4
			puts "You have earned a rank of: Super Hero" if $numRight == 5
		
		else
			
			puts "You have failed the Superman Trivia Quiz."
			puts "You missed "+ (5-$numRight).to_s + " questions"
			puts "Perhaps you should watch the movies again before trying again!"
		
		
		end
		
		SuperQuiz.pause
	
	end

	def goodbye
		
		SuperQuiz.cls
		puts "\t\tThank you for taking the SUPERMAN MOVIE TRIVIA QUIZ\n\n\n\n"
		puts "\t\t\t\tby Brian Pedigo\n\n\n"
		puts "\t\t\tMore games at https://github.com/Bpedigo"
		SuperQuiz.pause	
	
	end

end


# public void main

$numRight = 0

SuperQuiz = Quiz.new 

SuperQuiz.welcome

loop do
	
	SuperQuiz.cls
	
	puts "Would you like to take the quiz (Y/N)"
	
	answer = gets().chop!.downcase
	
	case answer
	
	when "n"
		exit

	when "y"
		break
	else
		SuperQuiz.cls
		puts "Invalid choice try again"
		SuperQuiz.pause
	end
	
end

SuperQuiz.instructions

SuperQuiz.cls

SuperQuiz.display("What is the name of the Daily Plant's ace photographer?","A. Jimmy Olsen", "B. Clack Kent", "C. Lex Luthor", "D. Louis Lane","a")

SuperQuiz.display("What is the name of Clark Kent's home town?", "A. Metroplis", "B. Gotham City", "C. Smallville", "D. New York", "c")

SuperQuiz.display("In which move did Superman battle General Zod?", "A. Superman", "B. Superman II", "C. Superman III", "D. Superman IV", "b")

SuperQuiz.display("What is the name of Superman's father?", "A. Nimo", "B. Jarrell", "C. Lex Luthor", "D. Kyrpton", "b")

SuperQuiz.display("Where had Superman been at the start of Superman Returns?", "A. Moon", "B. Fortress of Solitude", "C. Earth's Core", "D. Krypton", "d")

SuperQuiz.grade

SuperQuiz.goodbye



