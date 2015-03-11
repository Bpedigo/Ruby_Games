#-----------------------------------------------------------------
#
# Script Name: BlackJack
# Version:   3.0 
# Author:  Brian Pedigo     
# Date:   March 2015     
#
# Description:  Simple Black Jack game while learning the Ruby language                                
#
#-----------------------------------------------------------------


class Game
	
	

	def incAct( int)
	
		@@act += int
		
	end

	def cls
	
		system 'cls'
		
	end
	
	def pause
	
		gets

	end

	def slowText(statement)
		
		statement.each_char do |letter|
		sleep 0.050
		print letter
		end
		puts
 
	end
	
	def Build_the_deck
		
		
	# Deck elements, cardType, cardSuit, 
	cardLabel = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]
	cardSuit = ["Hearts", "Spades", "Clubs", "Diamonds"]
	@deck = []

	# Makes deck using deck elements
	cardLabel.each do |label|
		cardSuit.each do |suit|
			@deck.push([label, suit])
		end
	end


	# Gives all aces two values of 1 or 11
	@deck[48..51].each do |ace|
		ace.push(1).push(11)
	end

	# Gives all twos a value of 2
	@deck[0..3].each do |two|
		two.push(2)
	end

	# Gives all threes a value of 3
	@deck[4..7].each do |three|
		three.push(3)
	end

	# Gives all fours a value of 4
	@deck[8..11].each do |four|
		four.push(4)
	end

	# Gives all fives a value of 5
	@deck[12..15].each do |five|
		five.push(5)
	end

	# Gives all sixs a value of 6
	@deck[16..19].each do |six|
		six.push(6)
	end

	# Gives all sevens a value of 7
	@deck[20..23].each do |seven|
		seven.push(7)
	end

	# Gives all eights a value of 8
	@deck[24..27].each do |eight|
		eight.push(8)
	end

	# Gives all nines a value of 9
	@deck[28..31].each do |nine|
		nine.push(9)
	end

	# Gives all face cards (J,Q,K) values of 10
	@deck[32..47].each do |faceCard|
		faceCard.push(10)
	end

	
	
	end

	def shuffle_and_deal
		
		

		found = false 
		until found != false
	
			@card1 = rand(51)
			@card2 = rand(51)
			@card3 = rand(51)
			@card4 = rand(51)
			@card5 = rand(51)
			@card6 = rand(51)
			@card7 = rand(51)
			@card8 = rand(51)
			@card9 = rand(51)
			@card10 = rand(51)
			@card11 = rand(51)
			@card12 = rand(51)
			@card13 = rand(51)
			@card14 = rand(51)
			@card15 = rand(51)
			@card16 = rand(51)
			@card17 = rand(51)
			@card18 = rand(51)
			@card19 = rand(51)
			@card20 = rand(51)
			
			if @card1 != @card2
				if @card2 != @card3
					if @card3 != @card4
						if @card4 != @card5
							if @card5 != @card6
								if @card6 != @card7
									if @card7 != @card8
										if @card8 != @card9
											if @card9 != @card10
												if @card10 != @card11
													if @card11 != @card12
														if @card12 != @card13
															if @card13 != @card14
																if @card14 != @card15
																	if @card15 != @card16
																		if @card16 != @card17
																			if @card17 != @card18
																				if @card18 != @card19
																					if @card19 != @card20
																					
																						    found = true
																					end
																				end
																			end	
																		end		
																	end			
																end
															end
														end
												    end
												end			
											end
										end
									end
								end
							end
						end
					end
				end
			end			
		end
	end

	def Playing(int)
		
		case int
		
			when 1
				
				sence1
				
			when 2
				
				sence2
			
			when 3 
				
				sence3
				
			when 4
				
				sence4
			
			when 5
			 
				sence5
			
			when 6
			
				sence6
			
			when 7
			
				sence7
				
			end
		
		
		puts "would you like another card (hit) or (stay) or (quit)"
		answer = gets.chop!.downcase
		
	
		if answer == "s" || answer == "stay"
			counter = 0
	
			until @cpuhand >= 17
			
				 counter +=1
				 @cpuhand += getcard(counter)
				
				 
			end
			
			@@gameover = true
		
		elsif answer == "h" || answer == "hit"
		
			incAct(1)
			
		elsif answer == "q" || answer == "quit"
		
			cls
			puts"thanks for playing good bye!"
			pause
			cls
			exit
			
	
		end
		
	
	
	end
	
	def welcome

		
		
		loop do
		
		cls
	
		print %Q{
		
           _ _____________________________________________ __
           [*~~                                           ~~*]
       __[[~             __                __         ___    ]
      [*L L            _LLLL_            _[LL*_      *LL]_   ]
      L L L         _LLLLLLLLLL_       _[L L L~LL_LL~L L L]_ ]
      L L L      _LLLLLLLLLLLLLLLL_    L L L L L L L L L L ] ]
      L L L    _LLLLLLLLLLLLLLLLLLLL_  ~*L L L L L L L L L*~ ]
      L L L    LLLLLLLLLLLLLLLLLLLLLL    *LL L L L L L LL*   ]
      L L L    ~*LLLLL**LLLL**LLLLL*~     ~*LL L L L LL*~    ]
      L L L             LLLL                 ~*L_L_L*~       ]
      L L L            _LLLL_                   ~*~          ]
      L L L                                                  ]
      L L L                                                  ]
      L L L                                                  ]
      L L L            _L_                    xxx            ]
      L L L          _LL LL_               xLLLLLLLLx        ]
      L L L        _LL L L LL_            xLLLLLLLLLLx       ]
      L L L      _LL L L L L LL_      __xLLLXXXXXXXXLLLx__   ]
      L L L    =LL L L L L L L LL=  [LLLLLLLLLLLLLLLLLLLLLL] ]
      L L L      ~LL L L L L LL~    [LLLLLLLLLLLLLLLLLLLLLL] ]
      L L L        ~LL L L LL~        ~~XXXX~ LLLL ~XXXX~~   ]
      L L L          ~LL LL~                  LLLL           ]
      L L L_           ~L~                   =XXXX=          ]
      L *L *L__                                           ___]
      ~[_~*=L_XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*~~
        ~~*============================================~ }
		puts"\n\n\n"
		
		slowText("\t  W E L C O M E  T O  R U B Y  B L A C K  J A C K")
		slowText("\n\n\t                 By Brian Pedigo")
		
		puts"\n\n\n"
		
		puts "Would you like to play?(y/n)?" #todo place or (i) option for how to play black jack! add a new method called instructions
		
		ans = gets.chomp!.downcase
				
				if ans !~ /[ny]/
					
					cls
					puts "Invalid response"
					pause
					
				elsif ans ==  "y"
				
					return true
				
				elsif ans == "n"
				
					return false
				
				end
		end
	end

	def aced
		
		loop do
			cls
			slowText("You got an ACE!!!")
			puts"\n\n"
			puts %Q{
		
		
         _________  
        |         | 
        |A        | 
        |    ,    | 
        |   / \\   | 
        |  (_ _)  | 
        |   /_\\   | 
        |         | 
        |        A| 
        |_________|
		
		}
			puts"\n\n\n"
			puts "you want its value to be 1 or 11?"
			ans = gets.chop!
			#puts ans.class
			#pause
		if ans !~ /[1234567891011]/
			cls
			puts"Invalid choice pick 1 or 11"
			pause
		
		elsif ans == "1"
			
			return 2
		
		elsif ans == "11"
			
			return 3
		
		end
		end
		
	
	
	end
	
	def sence1
	
		a = 2
		b = 2
		
		if @deck[@card1][0] == "Ace"
		
			a = aced
		
		elsif @deck[@card2][0] == "Ace"
			
			b = aced
			
		end
		
		@PlayerTotal = @deck[@card1][a] + @deck[@card2][b]
		@cpuhand = @deck[@card20][2]
		
		
		if @PlayerTotal > 21
				slowText("you B U S T E D !")
				pause
				@@gameover = true
		end
		
		
		    cls
			puts "============================================="
		    puts " || Chip total       || current bet         ||"
			puts "============================================="
			puts "D|| Card 1: "+ @deck[@card20][0] + " of " + @deck[@card20][1] 
			puts "E|| Card 2: is faced down(Value unknown) "
	        puts "A||"           
            puts "L||"
			puts "E||"
			puts "R|| Dealers Card total is " + @deck[@card20][2].to_s
		    puts "=============================================="			  
			puts "P|| Card 1: " +@deck[@card1][0].to_s + " of " + @deck[@card1][1].to_s
			puts "L|| Card 2: " +@deck[@card2][0].to_s + " of " + @deck[@card2][1].to_s
			puts "A||"
			puts "Y||"
			puts "E||"
			puts "R|| Players Card total is " +@PlayerTotal.to_s
			puts "================================================"
			
		
		
	end
	
	def sence2
	
		a = 2
		
		if @deck[@card3][0] == "Ace"
		
			a = aced
			
		end
		
		@PlayerTotal += @deck[@card3][a]
		#@cpuhand = @deck[@card10][2]
		
		
		if @PlayerTotal > 21
				slowText("you B U S T E D !")
				pause
				@@gameover = true
		end
		
		
		    cls
			puts "============================================="
		    puts " || Chip total       || current bet         ||"
			puts "============================================="
			puts "D|| Card 1: "+ @deck[@card20][0] + " of " + @deck[@card20][1] 
			puts "E|| Card 2: is faced down(Value unknown) "
	        puts "A||"           
            puts "L||"
			puts "E||"
			puts "R|| Dealers Card total is " + @deck[@card20][2].to_s
		    puts "=============================================="			  
			puts "P|| Card 1: " +@deck[@card1][0].to_s + " of " + @deck[@card1][1].to_s
			puts "L|| Card 2: " +@deck[@card2][0].to_s + " of " + @deck[@card2][1].to_s
			puts "A|| Card 3: "	+@deck[@card3][0].to_s + " of " + @deck[@card3][1].to_s
			puts "Y||"
			puts "E||"
			puts "R|| Players Card total is " +@PlayerTotal.to_s
			puts "================================================"
			
		
		
	end
	
	def sence3
	
		a = 2
		
		if @deck[@card4][0] == "Ace"
		
			a = aced
			
		end
		
		@PlayerTotal += @deck[@card4][a]
		#@cpuhand = @deck[@card10][2]
		
		
		if @PlayerTotal > 21
				slowText("you B U S T E D !")
				pause
				@@gameover = true
		end
		
		
		    cls
			puts "============================================="
		    puts " || Chip total       || current bet         ||"
			puts "============================================="
			puts "D|| Card 1: "+ @deck[@card20][0] + " of " + @deck[@card20][1] 
			puts "E|| Card 2: is faced down(Value unknown) "
	        puts "A||"           
            puts "L||"
			puts "E||"
			puts "R|| Dealers Card total is " + @deck[@card20][2].to_s
		    puts "=============================================="			  
			puts "P|| Card 1: " +@deck[@card1][0].to_s + " of " + @deck[@card1][1].to_s
			puts "L|| Card 2: " +@deck[@card2][0].to_s + " of " + @deck[@card2][1].to_s
			puts "A|| Card 3: "	+@deck[@card3][0].to_s + " of " + @deck[@card3][1].to_s
			puts "Y|| Card 4: " +@deck[@card4][0].to_s + " of " + @deck[@card4][1].to_s
			puts "E||"
			puts "R|| Players Card total is " +@PlayerTotal.to_s
			puts "================================================"
			
		
		
	end
	
	def sence4
	
		a = 2
		
		if @deck[@card5][0] == "Ace"
		
			a = aced
			
		end
		
		@PlayerTotal += @deck[@card5][a]
		#@cpuhand = @deck[@card10][2]
		
		
		if @PlayerTotal > 21
				slowText("you B U S T E D !")
				pause
				@@gameover = true
		end
		
		
		    cls
			puts "============================================="
		    puts " || Chip total       || current bet         ||"
			puts "============================================="
			puts "D|| Card 1: "+ @deck[@card20][0] + " of " + @deck[@card20][1] 
			puts "E|| Card 2: is faced down(Value unknown) "
	        puts "A||"           
            puts "L||"
			puts "E||"
			puts "R|| Dealers Card total is " + @deck[@card20][2].to_s
		    puts "=============================================="			  
			puts "P|| Card 1: " +@deck[@card1][0].to_s + " of " + @deck[@card1][1].to_s
			puts "L|| Card 2: " +@deck[@card2][0].to_s + " of " + @deck[@card2][1].to_s
			puts "A|| Card 3: "	+@deck[@card3][0].to_s + " of " + @deck[@card3][1].to_s
			puts "Y|| Card 4: " +@deck[@card4][0].to_s + " of " + @deck[@card4][1].to_s
			puts "E|| Card 5: " +@deck[@card5][0].to_s + " of " + @deck[@card5][1].to_s
			puts "R|| "
			puts " ||  Players Card total is " +@PlayerTotal.to_s
			puts "================================================"
			
		
		
	end
	
	def sence5
	
		a = 2
		
		if @deck[@card6][0] == "Ace"
		
			a = aced
			
		end
		
		@PlayerTotal += @deck[@card6][a]
		#@cpuhand = @deck[@card10][2]
		
		
		if @PlayerTotal > 21
				slowText("you B U S T E D !")
				pause
				@@gameover = true
		end
		
		
		    cls
			puts "============================================="
		    puts " || Chip total       || current bet         ||"
			puts "============================================="
			puts "D|| Card 1: "+ @deck[@card20][0] + " of " + @deck[@card20][1] 
			puts "E|| Card 2: is faced down(Value unknown) "
	        puts "A||"           
            puts "L||"
			puts "E||"
			puts "R|| Dealers Card total is " + @deck[@card20][2].to_s
		    puts "=============================================="			  
			puts "P|| Card 1: " +@deck[@card1][0].to_s + " of " + @deck[@card1][1].to_s
			puts "L|| Card 2: " +@deck[@card2][0].to_s + " of " + @deck[@card2][1].to_s
			puts "A|| Card 3: "	+@deck[@card3][0].to_s + " of " + @deck[@card3][1].to_s
			puts "Y|| Card 4: " +@deck[@card4][0].to_s + " of " + @deck[@card4][1].to_s
			puts "E|| Card 5: " +@deck[@card5][0].to_s + " of " + @deck[@card5][1].to_s
			puts "R|| Card 6: " +@deck[@card6][0].to_s + " of " + @deck[@card6][1].to_s
			puts " ||"
			puts " ||  Players Card total is " +@PlayerTotal.to_s
			puts "================================================"
			
		
		
	end
	
	def sence6
	
		a = 2
		
		if @deck[@card7][0] == "Ace"
		
			a = aced
			
		end
		
		@PlayerTotal += @deck[@card7][a]
		#@cpuhand = @deck[@card10][2]
		
		
		if @PlayerTotal > 21
				slowText("you B U S T E D !")
				pause
				@@gameover = true
		end
		
		
		    cls
			puts "============================================="
		    puts " || Chip total       || current bet         ||"
			puts "============================================="
			puts "D|| Card 1: "+ @deck[@card20][0] + " of " + @deck[@card20][1] 
			puts "E|| Card 2: is faced down(Value unknown) "
	        puts "A||"           
            puts "L||"
			puts "E||"
			puts "R|| Dealers Card total is " + @deck[@card20][2].to_s
		    puts "=============================================="			  
			puts "P|| Card 1: " +@deck[@card1][0].to_s + " of " + @deck[@card1][1].to_s
			puts "L|| Card 2: " +@deck[@card2][0].to_s + " of " + @deck[@card2][1].to_s
			puts "A|| Card 3: "	+@deck[@card3][0].to_s + " of " + @deck[@card3][1].to_s
			puts "Y|| Card 4: " +@deck[@card4][0].to_s + " of " + @deck[@card4][1].to_s
			puts "E|| Card 5: " +@deck[@card5][0].to_s + " of " + @deck[@card5][1].to_s
			puts "R|| Card 6: " +@deck[@card6][0].to_s + " of " + @deck[@card6][1].to_s
			puts " || Card 7: "	+@deck[@card7][0].to_s + " of " + @deck[@card7][1].to_s
			puts " ||"
			puts " ||  Players Card total is " +@PlayerTotal.to_s
			puts "================================================"
			
		
		
	end
	
	def sence7
	
		a = 2
		
		if @deck[@card8][0] == "Ace"
		
			a = aced
			
		end
		
		@PlayerTotal += @deck[@card8][a]
		#@cpuhand = @deck[@card10][2]
		
		
		if @PlayerTotal > 21
				slowText("you B U S T E D !")
				pause
				@@gameover = true
		end
		
		
		    cls
			puts "============================================="
		    puts " || Chip total       || current bet         ||"
			puts "============================================="
			puts "D|| Card 1: "+ @deck[@card20][0] + " of " + @deck[@card20][1] 
			puts "E|| Card 2: is faced down(Value unknown) "
	        puts "A||"           
            puts "L||"
			puts "E||"
			puts "R|| Dealers Card total is " + @deck[@card20][2].to_s
		    puts "=============================================="			  
			puts "P|| Card 1: " +@deck[@card1][0].to_s + " of " + @deck[@card1][1].to_s
			puts "L|| Card 2: " +@deck[@card2][0].to_s + " of " + @deck[@card2][1].to_s
			puts "A|| Card 3: "	+@deck[@card3][0].to_s + " of " + @deck[@card3][1].to_s
			puts "Y|| Card 4: " +@deck[@card4][0].to_s + " of " + @deck[@card4][1].to_s
			puts "E|| Card 5: " +@deck[@card5][0].to_s + " of " + @deck[@card5][1].to_s
			puts "R|| Card 6: " +@deck[@card6][0].to_s + " of " + @deck[@card6][1].to_s
			puts " || Card 7: "	+@deck[@card7][0].to_s + " of " + @deck[@card7][1].to_s
			puts " || Card 8: " +@deck[@card8][0].to_s + " of " + @deck[@card8][1].to_s
			puts " ||"
			puts " ||  Players Card total is " +@PlayerTotal.to_s
			puts "================================================"
			
		
		
	end
	
	def getcard(int)
		
		case  int
		
			when 1
			
				return @deck[@card19][2]
		
			when 2
		
				return @deck[@card18][2]
		
			when 3
		
				return @deck[@card17][2]
		
			when 4
		
				return @deck[@card16][2]
			
			when 5
		
				return @deck[@card15][2]
				
			end
		
	end	

	def pokerRoom
		
		cls
		puts %Q{
		            _.---._
  .-------.  .-------.    .'.-----.'.    .-------.  .-------.
  |   *   |  | ** ** |   /  | .^. |  \\   |  / \\  |  |   _   |
  | *   * |  |*  *  *|  :   |(_ _)|   :  | /   \\ |  | _( )_ |
  |*     *|  | *   * |  :   |  ^  |   :  | \\   / |  |(_ . _)|
  |  *I*  |  |   *   |   \\  |A   S|  /   |  \\ /  |  |   I   |
  |   A   |  |   A   |    '.'-----'.'    |   A   |  |   A   |
  '-------'  '-------'      `'---'`      '-------'  '-------'
                              ) (
                            _(   )_
                           (_______)
      
~.:.~.:.~.:.~.:.~.:.~.:.~.:.~.:.~.:.~.:.~.:.<>.:.~.:.~.:.~.:.~.:.~.:.~.:.~.:.~.:.~.:.~.:.~}
	
	puts "\n\n\n"
	puts "\t\t\tT H E  P O K E R  R O O M!\n\t"
	slowText ("\t\t\tThe Results Are IN!")
	
	if @cpuhand > 21
	
		puts "\n\n"
		slowText ("\n\t\t\tDealer busted! Player Wins")
		puts "\n\t\t\tDealer hand: " +@cpuhand.to_s
		puts "\n\t\t\tPlayer hand: " +@PlayerTotal.to_s
		pause
		
		
	elsif @PlayerTotal > 21 
		
		puts "\n\n"
		slowText ("\n\t\t\tPlayer busted! Dealer Wins")
		puts "\n\t\t\tPlayer hand: " +@PlayerTotal.to_s
		puts "\n\t\t\tDealer hand: " +@cpuhand.to_s
		pause
		
	elsif @cpuhand > @PlayerTotal
	
		puts "\n\n"
		slowText("\n\t\t\tDealer Wins!")
		puts "\n\t\t\tDealer hand: " +@cpuhand.to_s
		puts "\n\t\t\tPlayer hand: " +@PlayerTotal.to_s
		pause
	
	elsif @cpuhand < @PlayerTotal
	
        puts "\n\n"	
		slowText ("\n\t\t\tPlayer Wins!")
		puts "\n\t\t\tDealer hand: " +@cpuhand.to_s
		puts "\n\t\t\tPlayer hand: " +@PlayerTotal.to_s
		pause
		
	elsif @cpuhand == @PlayerTotal
		
		puts"\n\n"
		slowText("\n\t\t\tAmazing it was a tie!")
		puts "\n\t\t\tDealer hand: " +@cpuhand.to_s
		puts "\n\t\t\tPlayer hand: " +@PlayerTotal.to_s
		pause
		
	
	end
	end
	
end	
	
	


## Public Void Main no args

play = false
@@act = 0

BJ = Game.new



play = BJ.welcome



if play

	BJ.Build_the_deck
	BJ.shuffle_and_deal
	BJ.incAct(1)

	@@gameover = false
	
		
		
		loop do
		
			until @@gameover != false

				BJ.Playing(@@act)	
			 
			end
			
				BJ.pokerRoom
				
				BJ.cls	
				
				puts "Would you like to play again?(Y/N)"
				
				answer = gets.chop!.downcase
				
			if answer !~ /[yn]/
			
				puts "invalid response"
				
				redo
			
			elsif answer == "y"
				
				@@gameover = false
				
				@@act = 1
				
				BJ.Build_the_deck
				
				BJ.shuffle_and_deal
				
				redo
				
			elsif answer == "n"
				
				BJ.cls
				
				BJ.slowText("Thanks for playing! Good bye!")
				
				BJ.pause
				
				BJ.cls
				
				exit
				
			end
				
		end
		
end	






	
	
	
	
	


