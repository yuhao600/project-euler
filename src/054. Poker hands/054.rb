class Card
  attr_reader :value, :suit
  def initialize(str)
    case str[0]
      when 'T' then @value = 10
      when 'J' then @value = 11
      when 'Q' then @value = 12
      when 'K' then @value = 13
      when 'A' then @value = 14
      else @value = str[0].to_i
    end
    case str[1]
      when 'D' then @suit = :diamond
      when 'H' then @suit = :heart
      when 'C' then @suit = :club
      when 'S' then @suit = :spade
    end
  end
end

class Hand
  include Comparable
  attr_reader :rank, :ranking_value, :other_values

  def initialize(cards)
    @cards = cards
    @values = @cards.map(&:value).sort
    @suits = @cards.map(&:suit).sort
    @ranking_value = @values.max
    @other_values = []
    rank
  end
  
  def is_royal_flush
    @values == [10, 11, 12, 13, 14] and @suits.count(@suits.first) == 5
  end

  def is_straight_flush
    @other_values = []
    return false if @suits.count(@suits.first) != 5
    @ranking_value = @values.last
    @values.each_cons(2).all? {|a, b| b == a + 1 }
  end

  def is_four_of_a_kind
    @other_values = []
    counter = Hash.new(0)
    @values.each { |v| counter[v] += 1 }
    is_four = false
    counter.each do |k, v|
      if v == 4
        @ranking_value = k
        is_four = true
      else
        @other_values << k
      end
    end
    is_four
  end

  def is_full_house
    @other_values = []
    counter = Hash.new(0)
    @values.each { |v| counter[v] += 1 }
    met_three, met_two = false, false
    counter.each do |k, v|
      if v == 3
        @ranking_value = k
        met_three = true
      elsif v == 2
        @other_values << k
        met_two = true
      end
    end
    met_three and met_two
  end

  def is_flush
    @other_values = []
    @ranking_value = @values.max
    @other_values = Array.new(@values)
    @other_values.delete(@ranking_value)
    @other_values.sort! {|a,b| b <=> a}
    @suits.count(@suits.first) == 5
  end

  def is_straight
    @other_values = []
    @ranking_value = @values.max
    @values.each_cons(2).all? {|a, b| b == a + 1 }
  end

  def is_three_of_a_kind
    @other_values = []
    counter = Hash.new(0)
    @values.each { |v| counter[v] += 1 }
    is_three = false
    counter.each do |k, v|
      if v == 3
        @ranking_value = k
        is_three = true
      else
        @other_values << k
      end
    end
    @other_values.sort! {|a,b| b <=> a}
    is_three
  end

  def is_two_pairs
    @other_values = []
    counter = Hash.new(0)
    @values.each { |v| counter[v] += 1 }
    pair_count = 0
    ranking_values = []
    counter.each do |k, v|
      if v == 2
        ranking_values << k
        pair_count += 1
      else
        @other_values << k
      end
    end
    if pair_count == 2
      @ranking_value = ranking_values.sort {|a,b| b <=> a}
      @other_values.sort! {|a,b| b <=> a}
      return true
    end
    false
  end

  def is_one_pair
    @other_values = []
    counter = Hash.new(0)
    @values.each { |v| counter[v] += 1 }
    is_pair = false
    counter.each do |k, v|
      if v == 2
        @ranking_value = k
        is_pair = true
      else
        @other_values << k
      end
    end
    @other_values.sort! {|a,b| b <=> a}
    is_pair
  end

  def is_high_card
    @ranking_value = 0
    @other_values = Array.new(@values)
    @other_values.sort! {|a,b| b <=> a}
    true
  end

  def rank
    if is_royal_flush
      @rank = 10 
    elsif is_straight_flush
      @rank = 9
    elsif is_four_of_a_kind
      @rank = 8
    elsif is_full_house
      @rank = 7
    elsif is_flush
      @rank = 6
    elsif is_straight
      @rank = 5
    elsif is_three_of_a_kind
      @rank = 4
    elsif is_two_pairs
      @rank = 3
    elsif is_one_pair
      @rank = 2
    elsif is_high_card
      @rank = 1
    end
  end

  def <=>(other)
    if @rank != other.rank
      return @rank <=> other.rank
    elsif @ranking_value != other.ranking_value
      return @ranking_value <=> other.ranking_value
    else
      return other_values <=> other.other_values
    end
  end
end

pokers = File.read('p054_poker.txt')
player1wins = 0
pokers.lines do |line|
  cards = []
  line.split().each do |c|
    cards << Card.new(c)
  end
  hand1 = Hand.new(cards[0, 5])
  hand2 = Hand.new(cards[5, 5])
  if hand1 > hand2
    player1wins += 1
  end
end
puts player1wins
