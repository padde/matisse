class Range
  def inspect_colorized
    dot_string = '..'
    dot_string = '...' if exclude_end?
    res  = self.begin.inspect_colorized
    res += dot_string.colorize(:range_dots)
    res += self.end.inspect_colorized
  end
end
