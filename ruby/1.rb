# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

(1..999).to_a.inject([]){|array, n| array << n if ((n%5).zero? || (n%3).zero?); array }.inject(:+)
