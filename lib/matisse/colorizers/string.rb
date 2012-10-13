class String
  def inspect_colorized
    res  = '"'.colorize(:string_delimiter)
    res += self.colorize(:string)
    res += '"'.colorize(:string_delimiter)
  end
end
