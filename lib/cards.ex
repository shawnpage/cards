defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello()
      :world

  """
  def hello do
    # :world
    "hi there"
  end

  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
    suits  = ["Spades", "Clubs", "Hearts", "Diamonds"]



    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
    #    for value <- values, suit <- suits do
    #      "#{value} of #{suit}"
    #    end


#    cards = for suit <- suits do
##      suit
#      for value <- values do
#        "#{value} of #{suit}"
#      end
##      "Is this a map"
#    end
##    List.flatten(cards)

  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
#    Enum.any?(deck, fn x -> x == card end)
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

end
