class Array
  def inspect_colorized
    res  = '['.colorize(:array_delimiter)
    res += map(&:inspect_colorized).join(','.colorize(:array_comma))
    res += ']'.colorize(:array_delimiter)
  end
end