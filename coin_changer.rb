
# Coin changer instructions:

# Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.

# eg. If you have 11 cents you should return {:dime => 1, :penny => 1};
# eg. If you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1};
# eg. If you have 93 cents {:quarter => 3, :dime => 1, nickel => 1, :penny => 3}

def coin_changer(cents)
	wallet = {}

	dime_value = 10
	quarter_value = 25
	#remainder = 0

	#available_coins  = {"Quarter" => 25, "Dime" => 10, "Nickel" => 5, "Penny" => 1}
	
	if cents == 0
		return wallet
	end

	if cents >= 25
		wallet[:quarter] = cents/quarter_value
		cents = cents - 25
	end

	if cents >= 20
		wallet[:dime] = cents/dime_value
		cents = cents - 20
	end

	if cents >= 10
		wallet[:dime] = 1
		cents = cents - 10
	end

	if cents >= 5
		wallet[:nickel] = 1
		cents = cents - 5
	end

	if cents >= 1
		wallet[:penny] = cents
	end
	wallet

end


  # def change(amount)

  # 	# hash to hold the list of available coins.
  #   available_coins  = {"Quarter" => 25, "Dime" => 10, "Nickel" => 5, "Penny" => 1}
  #   # holds list of coins to return
  #   coins            = {}     
  #   # holds the remaining amount of money to change.    
  #   remaining_amount = amount

  #   # counts down finds biggest coins first (iterates)
  #   available_coins.each do |coin| 
  #   	if ((remaining_amount/coin).to_int > 0)
  #   		then (remaining_amount/coin).to_int.times { coins << coin }
  #       	puts "Remaining Amount: #{remaining_amount} | Coin: #{coin}"
  #       	remaining_amount = amount - coins.inject(:+)
  #   		end                         # coins.inject(:+) sums hash items
  #   	end                           
  #   puts "Amount #{amount} >> Coins: #{coins}\n\n"
  #   return coins
  # end
