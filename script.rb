#!/usr/bin/ruby

require_relative('lib/coins.rb')
input = gets.chomp
input_int = input.to_i
coin = Coin.new(input_int)
puts coin.coin_counter()

puts <<-'HEREDOC'
\|/          (__)    
     `\------(oo)
       ||    (__)
       ||w--||     \|/
   \|/
HEREDOC
