class Hash
  def inspect_colorized
    res  = '{'.colorize(:hash_delimiter)
    res += map do |k,v|
      k.inspect_colorized + '=>'.colorize(:hash_rocket) + v.inspect_colorized
    end.join(','.colorize(:hash_comma))
    res += '}'.colorize(:hash_delimiter)
  end
end
