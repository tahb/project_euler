defmodule Multiples do
  def sum(range) do
    numbers = Enum.to_list(1..range)

    multiples = Enum.reject numbers, fn(number) ->
      not (Multiples.multiple_of_3?(number) or Multiples.multiple_of_5?(number))
    end

    IO.puts Enum.sum(multiples)
  end

  def multiple_of_3?(number) do
    rem(number,3) == 0
  end

  def multiple_of_5?(number) do
    rem(number,5) == 0
  end
end

Multiples.sum(999)
