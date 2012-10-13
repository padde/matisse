class Regexp
  def inspect_colorized
    res  = '/'.colorize(:regexp_delimiter)
    res += self.inspect[1..-2].colorize(:regexp)
    res += '/'.colorize(:regexp_delimiter)
  end
end
