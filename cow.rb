class Cow
  attr_reader :spots
  attr_accessor :color

  DEFAULT_NUM_LEGS = 4
  DEFAULT_NUM_SPOTS = 3
  @@thing = 2
  @@id = 0

  class ThreeLeggedError < StandardError
  end

  def initialize(options = {})
    @color = options.fetch(:color, "pink")
    @spots = options.fetch(:spots, DEFAULT_NUM_SPOTS)
    @id = @@id
    @@id += 1
  end

  def next_id
    @@id
  end

  def legs
    @@thing += 1
    p @@thing
    raise ThreeLeggedError unless @@thing < 10
  end

end

Cow.new.legs
Cow.new.legs
Cow.new.legs
Cow.new.legs
Cow.new.legs
Cow.new.legs
Cow.new.legs
Cow.new.legs
Cow.new.legs
Cow.new.legs
Cow.new.legs
Cow.new.legs
Cow.new.legs
Cow.new.legs
Cow.new.legs
