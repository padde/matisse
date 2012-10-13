class Rational
  def inspect_colorized
    res  = '('.colorize(:rational_delimiter)
    res += numerator.inspect_colorized
    res += '/'.colorize(:rational_slash)
    res += denominator.inspect_colorized
    res += ')'.colorize(:rational_delimiter)
  end
end
