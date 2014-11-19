require 'rubygems'
require 'pry'
(1..1000).to_a.inject([]){|array, n| array << n if ((n%5).zero? || (n%3).zero?); array }

