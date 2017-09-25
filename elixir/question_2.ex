require Integer

defmodule Fib do
  def find_numbers(first, second, accumulator \\ []) do
    new = first + second

    if new < 4_000_000 do
      accumulator = [ new | accumulator ]
      find_numbers(second, new, accumulator)
    else
      accumulator
    end
  end

  def add_even_numbers(numbers) do
    Enum.sum(even_numbers(numbers))
  end

  def even_numbers(numbers) do
    Enum.reject(numbers, fn(x) -> Integer.is_odd(x) end)
  end
end

numbers = Fib.find_numbers(0, 1)
answer = Fib.add_even_numbers(numbers)
IO.puts "Question 2: #{answer}"
