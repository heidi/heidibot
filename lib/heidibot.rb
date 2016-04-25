class Heidibot
  attr_accessor :past_throws, :seeded_random

  def initialize
    @past_throws = []
  end

  def throw
    winning_move(@past_throws.sample(random: seeded_random)) ||
      %i[rock paper scissors].sample(random: seeded_random)
  end

  def reset!(seed)
    @past_throws = []
    @seeded_random = Random.new(seed)
  end

  def last_competitor_throw=(throw)
    @past_throws << throw
  end

  def winning_move(throw)
    case throw
    when :rock
      :paper
    when :paper
      :scissors
    when :scissors
      :rock
    end
  end
end
