class Matrix
  def inspect_colorized
    res  = 'Matrix'.colorize(:matrix)
    res += to_a.inspect_colorized
  end
end
