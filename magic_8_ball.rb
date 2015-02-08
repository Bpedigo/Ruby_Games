#-----------------------------------------------------------------
#
# Script Name: Magic Eight ball
# Version: 1      
# Author:  Brian Pedigo      
# Date: Jan 2015        
#
# Description:  Simple game to learn ruby                                 
#
#
#
#
#-----------------------------------------------------------------


class Magic

	def cls
	system ('cls')
	end
     
	def ask (arg1)
	    print arg1
		resp = gets().chop!.downcase
		return resp
	end

end

class Ball

#attr_accessor :

	def get_fortune
		randomNo = 1 + rand(6)
		case randomNo
			when 1
			$perdiction = "yes"
			when 2
			$perdiction = "No"
			when 3
			$perdiction = "Maybe"
			when 4
			$perdiction = "hard to tell. Try again"
			when 5
			$perdiction = "unlikely"
			when 6 
			$perdiction = "unknown"
		end
		puts $perdiction
	end	
	
	def draw
		print %Q{\t\t\t    _......._
                        .-:::::::::::-.
                      .:::::::::::::::::.
                     :::::::' .-. `:::::::
                    :::::::  :   :  :::::::
                   ::::::::  :   :  ::::::::
                   :::::::::._`-'_.:::::::::
                   :::::::::' .-. `:::::::::
                   ::::::::  :   :  ::::::::
                    :::::::  :   :  :::::::
                     :::::::._`-'_.:::::::
                      `:::::::::::::::::'
                        `-:::::::::::-'
                           `'''''''` }


	
	end
	
	
	
end	

###### public void main	


screen = Magic.new
magic_ball = Ball.new

screen.cls
screen.ask("\t\tWelcome to the Virtual Crazy 8 Ball game!"+
	"\n\n\n\n\n\n\n\n\n\n\nPress Enter")

	
res = " "
until res == "y" || res == "n"

screen.cls
res = screen.ask("Want to play the virtual magic 8 ball game? (Y/N)")

end

if res == "y"

    #game play
    quit = " "
    until quit == "q"
	screen.cls
	magic_ball.draw
	screen.ask("\n\nAsk your question to the magic eight ball will tell you your future!\n")
	magic_ball.get_fortune 
	quit = screen.ask("Press enter to ask another question or Q to quit")
    end
	screen.cls	
	screen.ask("Thanks for playing good bye!")

else 

	screen.cls	
	screen.ask("Okay Maybe next time! good bye")

end






























