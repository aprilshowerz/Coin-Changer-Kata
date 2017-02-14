require 'minitest/autorun'
require_relative 'coin_changer.rb'

class Test_coin_changer < Minitest::Test

	def test_zero_cents_returns_empty_hash
		assert_equal({}, coin_changer(0))
	end

	def test_one_cent_returns_one_penny
		assert_equal({:penny => 1}, coin_changer(1))
	end
	
	def test_2_cents_returns_2_pennies
		assert_equal({:penny => 2}, coin_changer(2))
	end

	def test_5_cents_returns_1_nickel
		assert_equal({:nickel => 1}, coin_changer(5))
	end

	def test_6_cents_returns_1_penny_and_1_nickel
		assert_equal({:penny => 1, :nickel => 1}, coin_changer(6))
	end

	def test_10_cents_returns_1_dime
		assert_equal({:dime => 1}, coin_changer(10))
	end

	def test_2_cents_returns_2_pennies
		assert_equal({:penny => 2}, coin_changer(1))
	end

	def test_2_cents_returns_2_pennies
		assert_equal({:penny => 2}, coin_changer(1))
	end

	def test_2_cents_returns_2_pennies
		assert_equal({:penny => 2}, coin_changer(1))
	end

	def test_2_cents_returns_2_pennies
		assert_equal({:penny => 2}, coin_changer(1))
	end

	def test_2_cents_returns_2_pennies
		assert_equal({:penny => 2}, coin_changer(1))
	end
end