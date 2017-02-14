require 'minitest/autorun'
require_relative 'coin_changer.rb'

class Test_coin_changer < Minitest::Test

	def test_one_returns_one
		assert_equal(1, coin_changer(1))
	end



end