#-----------------------------------------------------------------
#
# Script Name: WordGuess
# Version: 2.0     
# Author:  Brian Pedigo     
# Date:  Feb 2015      
#
# Description:   This Game shows how to work with regular expressions through development of a game.                               
# The game is simple you get to pick 5 constants and 1 vowel then you have to three tries to guess the word.
#
#-----------------------------------------------------------------

class Game

	def cls
		
		system 'cls'
		
	end
	
	def pause
	
		gets()
		
	end

	def greeting
	
		#cls
		
		choice = " "
		
		loop do
			
			cls
			print "\t\t\t Welcome to the Ruby Word Guessing Game!\n\n" 
			puts "\t\t\t\tBy Brian Pedigo Feb 2015\n\n\n\n"
			puts "Would you like to play (y/n) or (i) for instruction on how to play"
			
			choice = gets.chop!
		
		
			
			if choice =~ /n/i
			
				cls
				puts "Okay Maybe next time bye!"
				pause
				cls
				exit
				
			elsif choice =~ /y/i
				
				break

			elsif choice =~ /i/i
				
				insturctions
				#break
			
			else
				
				cls
				puts "Invalid response please choice only (y/n) or (i)"
				pause
				cls
			
			end
		end
	
	end

	def insturctions
	
		cls
		puts "INSTRUCTIONS:\n\n\n"
		puts "At the start of each new round of play, the game will randomly"
		puts "select a word that is between 5 and 10 characters long and challenge"
		puts "the player to guess the word. The player will pick 5 constants and 1 vowel"
		puts "at the beginning of each round. Then the player must try to guess the word."
		puts "The player only has three chances to get the word right good luck!"
		pause
		
	
	end

	def select_word
	
		words = ["W I N D O W", "S T A T I O N", "H A M B U R G E R", "E X P R E S S I O N", "W A L L E T", "C A M E R A", 
		"A I R P L A N E", "C A N D L E", "C O M P U T E R", "P I C T U R E", "F R A M E", "S H E L F", "B O W L I N G", "P O L I T E",
		"S T A T E M E N T", "N E G A T I V E", "M E T H O D", "F I S H I N G", "C O M P E N S A T E", "H A P P Y"]
		
		randNumber = rand(19)
		
		return words[randNumber]
	
	end

	def get_consonants
	
		list = Array.new
		
		cls
		
		puts "Before you try to guess the word, you get to pick 5 consonants"
		
		pause
		
			5.times do
			
				cls 
				 
				print "Please enter a letter and press enter!"
				 
				input = gets.chop!.upcase
				 
				if input !~ /[bcdfghjklmnpqrstvwxyz]/i 
					
					cls
					puts "#{input} is not a consonants"
					pause
					redo
					
				elsif input.length > 1 
					
					cls
					puts "You can only enter one letter at a time!"
					pause
					redo
					
				elsif list.include?(input)
						
					cls
					puts "You have already chosen #{input} you must chose a different letter!"
					pause
					redo
					
				else
						
					list.push(input)
					
				end
				 			
			end
	
		return list
	
	
	end
	
	def get_vowel
	
		input = " "
		
		1.times do
		
			cls 
			puts "Pick one vowel!"
			input = gets.chop!.upcase
	
			if input !~ /[aeiou]/i
			
				cls
				puts "You must chose only a vowel"
				pause
				redo
		
			elsif input.length > 1
			
				cls
				puts "You can only chose one letter!"
				pause
				redo
				
			end
		
		end
	
	  return input
		
	end

	def guess(shortWord, word, consants, vowel)
	
		cls
		
		consants.push(vowel)
		
		wordArray = word.split(" ")
		
		i = 0
		
		wordArray.each do |letter|
		
			match = false
				
				consants.each do |character|
				
					if character == letter
						
						match = true
						break
						
					end
					
				end
				
			if match == false

				wordArray[i] = "_"
				
			end	
				
			match = false	
				
			i = i + 1	
			
		end
		
		
		word = wordArray.join(" ")
		
		3.times do |j|
		
			cls
			draw_switch(4)
			puts"I am thinking of a word.\n\n\n\n\n"
			puts"Here is your clue " + word + "\n\n\n\n"
			puts"What do you think the word is?"
			reply = gets.chop!.upcase
			
			if reply == shortWord
			
			
				cls
				draw_switch(3)
				print "\n\nCorrect! you win!"
				pause
				break
			
			else
				
				if j == 1
				
					cls
					puts "You have only 1 more chance try again!"
					pause
				
				elsif j == 2
				
					cls
					draw_switch(j)
					puts "\t\tYou lose!\n\n"
					puts "The word was " + shortWord
					pause
					
				else
				
					cls
					puts "Wrong! try again"
					pause
				end
			end
		end				
	end
	
	def playing
		
		word = select_word
		
		cls
		
		consonants = get_consonants
		
		cls
		
		vowel = get_vowel
		
		shortWord = word.gsub(" ", "")
		
		guess(shortWord, word, consonants, vowel)
		
	
	end
	
	def draw_switch( int )
		
		case int
		
		when 0
			#drawing for try again
		when 1
			#drawing for 1 more chance
			
		when 2
		
			loser
			
		when 3
		
			winner
			
		when 4
		
			thinking
		
		end
	
	end
	
	def winner
	
		print %Q{\t\t\t\t   	   	 _                  
					 _    __(_)__  ___  ___ ____
					| |/|/ / / _ \\/ _ \\/ -_) __/
					|__,__/_/_//_/_//_/\\__/_/   
                            
	
	}
	
	
	end

	def loser
	
		print %Q{\t\t
					
			       __                      
			      / /  ___  ___ ___ ____   
			     / /__/ _ \\(_-</ -_) __/   
			    /____/\\___/___/\\__/_/      
                           
		}
	
	
	end

	def thinking
	
		print %Q{\n\n
            _---_.                        ______                           
          /  \     \\           o  O  O   _(      )__                        
         /    |  |  \\_---_   o._.      _(           )_                      
        |     |           \\   | |""""(_   Let's see... )                    
        |     |             |@ | |    (_ rec.pets.dogs _)                    
        \\___/   ___       /   | |      (__          _)                      
          \\____(___\\___/     | |         (________)                        
           |__|                | |          |                                
           /  \\-_             | |         |'                                
         /     \\_ "__ _       !_!--v---v--"                                 
        /         "|  |>)      |""""""""|                                    
       |          _|  | ._--""||        |                                    
       \\_____________|_|_____||________|                                    
      /                                  \\                                  
     /____________________________________\\                                 
     /                                    \\                                 
    /______________________________________\\                                
    /                                      \\                                
   /________________________________________\\                               
        {                               }                                    
        <_______________________________|                                    
        |                               >                                    
        {_______________________________|                           
        <                               }                          
        |_______________________________|                        
    
		
		
		}
	
	end
	
end

#public void main

Play_game = Game.new

	Play_game.greeting
	
	Play_game.playing

	continue =  " "

	1.times do
		
		Play_game.cls 
		puts "Would you like to play again?(Y/N)"
		continue = gets.chop!.upcase
		
		if continue !~ /[yn]/i
			
			Play_game.cls
			puts "Invalid response try again!"
			Play_game.pause
			redo
		
		elsif continue == "Y"
			
			Play_game.playing
			redo
		
		else
			
			puts "Thanks for Playing!"
			Play_game.pause
			Play_game.cls
		
		end
			

	end
	
	


