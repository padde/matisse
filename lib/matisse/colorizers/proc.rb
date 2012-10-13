class Proc
  def inspect_colorized
    inspect =~ /^(#<)([A-z]+)(:)(0x[0-9a-f]+)(@?)(\S*)( \(lambda\))?(>)$/
    res  = $1.colorize(:object_delimiter) # (#<)
    res += $2.colorize(:class           ) # ([A-z]+)
    res += $3.colorize(:object_separator) # (:)
    res += $4.colorize(:object_address  ) # (0x[0-9a-f]+)
    res += $5.colorize(:object_separator) # (@?)
    res += $6.colorize(:object_from     ) # (.*)
    res += $7.colorize(:lambda          ) unless $7.nil? # ( \(lambda\))
    res += $8.colorize(:object_delimiter) # (>)
  end
end
