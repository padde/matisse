class Float
  def inspect_colorized
    if inspect =~ /^(\d+)(\.)(\d+)$/
      res  = $1.colorize(:float            ) # (\d+)
      res += $2.colorize(:float_separator  ) # (\.)
      res += $3.colorize(:float            ) # (\d+)
      return res
    end
    
    if inspect =~ /^(\d)(\.)(\d+)(e)([+-])(\d+)$/
      res  = $1.colorize(:float            ) # (\d)
      res += $2.colorize(:float_separator  ) # (\.)
      res += $3.colorize(:float            ) # (\d+)
      res += $4.colorize(:float_exp        ) # (e)
      res += $5.colorize(:float_plusminus  ) # ([+-])
      res += $6.colorize(:float            ) # (\d+)
      return res
    end

    inspect
  end
end
