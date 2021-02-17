# frozen_string_literal: true

# Class Dot
class Dot
  def initialize(xxx, yyy)
    @xxx = xxx
    @yyy = yyy
  end

  def print
    puts("X: #{@xxx}", "Y: #{@yyy}")
  end

  def dox
    "X: #{@xxx}"
  end

  def doy
    "Y: #{@yyy}"
  end
end

# Class Circle
class Circle < Dot
  def initialize(xxx, yyy, rad)
    super(xxx, yyy)
    @rad = rad
  end

  def print
    puts("R: #{@rad}")
    super
  end

  def dor
    "R: #{@rad}"
  end
end
