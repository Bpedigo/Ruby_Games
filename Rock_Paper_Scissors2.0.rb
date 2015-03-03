#-----------------------------------------------------------------
#
# Script Name: Rock_Paper_Scissors
# Version: 2.0
# Author:  Brian Pedigo
# Date:    March 2015
#
# Description:   Rock Paper Scissors Game where the player
# plays against the computer.
#
#
#
#-----------------------------------------------------------------

class Game

		#class variables
        @@CpuWin = 0
		@@PlayerWin = 0
		@@Ties = 0
		@@GameTotals = 0
		#end class variables

	def incGT( int)

		@@GameTotals += int

	end

	def cls

		system 'cls'

	end

	def pause

		gets()

	end

	def welcome

		cls
		puts "\t\t Welcome to the Ruby Rock Paper Scissors Game!"
		puts "\n\n\n\t\t\t\t By Brain Pedigo"
		#insert a drawing here!
		pause

		loop do
		cls
		puts "Would you like to play (Y/N) or (I) for instructions on how to play"
		choice = gets.chop!.downcase

			case choice

				when "y"

					break

				when "n"

					cls
					puts "Okay maybe next time!"
					pause
					cls
					exit

				when "i"

					instructions

				else

					cls
					puts "Invalid response try again!"
					pause
			end
		end




	end

	def instructions

		cls
		puts "To play the rock, paper, scissors game all you have to do is pick rock, paper or scissors."
		puts "The computer will randomly pick as well and then the program will determine the winner."
		puts "The winner is determined by the following: "
		puts "\n1. rock beats scissors."
		puts "\n2. paper beats rock."
		puts "\n3. scissors beats paper."
		puts "\nYou can put the whole word for your choice or you can just type in the first letter."
		puts "That is all there is to it! have fun!"
		pause

	end

	def player_pick

		cls
		loop do
			puts "Your move. Chose [Rock][Paper][Scissors]! or [Quit] to exit the game!"
			choice = gets.chop!.downcase

			case choice

				when "r","rock"

					return "rock"

				when "p","paper"

					return "paper"

				when "s","scissors"

					return "scissors"

				when "q","quit"

					cls
					puts "Thanks for playing"
					pause
					exit

				else

					cls
					puts "Invalid response!"
					pause
					cls
			end
		end
	end

	def computer_pick

	   row = ["rock", "paper", "scissors"]
	   x = rand(3)
	   return row[x]

	end

	def winner(player, cpu)

		 case player

			when "rock"

				if cpu == "rock"

					@@Ties += 1
					return "tie!"

				elsif cpu == "paper"

					@@CpuWin += 1
					return "Computer Wins!"

				elsif cpu == "scissors"

					@@PlayerWin += 1
					return "Player Wins!"

				end

			when "paper"

				if cpu == "rock"

					@@PlayerWin += 1
					return "Player Wins!"

				elsif cpu == "paper"

					@@Ties += 1
					return "Tie!"

				elsif cpu == "scissors"

					@@CpuWin += 1
					return "Computer Wins!"

				end

			when "scissors"

				if cpu == "rock"

					@@CpuWin += 1
					return "Computer Wins!"

				elsif cpu == "paper"

					@@PlayerWin += 1
					return "Player Wins!"

				elsif cpu == "scissors"

					@@Ties += 1
					return "Tie!"

				end
		end
	end

	def playing

		x = player_pick
		o = computer_pick
		y = winner(x,o)
		results(x,o,y)


	end

	def results(player, cpu, winner)

		cls
		puts "\t\t G A M E  S T A T S\n\n"
		puts "==========================================="
		puts "\nThe player chose " + player
		puts "\nThe computer chose " + cpu
		puts "\nThe result is: " + winner
		puts "\nType S for more statistics"
		puts "\n==========================================="
		option = gets.chop!.downcase

			if option == "s"

				#perPlayer = (@@PlayerWin / @@GameTotals) * 100
				#perCpu = (@@CpuWin / @@GameTotals) * 100
				#perTies = (@@Ties / @@GameTotals) * 100

				puts "\nComputer won " + @@CpuWin.to_s + " games "
				puts "\nPlayer won " + @@PlayerWin.to_s + " games "
				puts "\nTies "  + @@Ties.to_s + " games "
				puts "\nThe number of games played " + @@GameTotals.to_s
				pause
			end

	end



end



#----PUBLIC VOID MAIN NO ARGS

rps = Game.new

rps.welcome

rps.incGT(1)

rps.playing



	loop do

		rps.cls
		puts "Would you like to play again? (y/n)"
		contuine = gets.chop!.downcase

		if contuine !~ /[yn]/

			rps.cls
			puts "invalid response please only chose (Y/N)"
			rps.pause

		elsif contuine == "n"

			rps.cls
			puts "Thanks for playing good bye"
			rps.pause
			break

		else

			rps.incGT(1)
			rps.playing

		end




	end






