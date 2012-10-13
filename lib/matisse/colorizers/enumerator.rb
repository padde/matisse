class Enumerator
  # TODO: eval is evil (hence the name), find a different approach!
  
  def inspect_colorized
    inspect =~ /^(#<)(Enumerator)(: )(.*)(:)([A-z_]+)((\()(.*)(\)))?(>)$/
    res  = $1.colorize(:object_delimiter  ) # (#<)
    res += $2.colorize(:class             ) # (Enumerator)
    res += $3.colorize(:object_separator  ) # (: )
    if $4.include?('Generator')             # (.*)
      res += ::Object.colorize_str($4)
    else
      res += eval($4).inspect_colorized
    end
    res += $5.colorize(:object_separator  ) # (:)
    res += $6.colorize(:enumerator        ) # ([A-z_]+)
    unless $7.nil?                          # ((\()(.*)(\)))?
      res += $8.colorize(:enumerator      ) #   (\()
      args = $9.split(',').map{|x|eval(x)}  #   (.*)
      res += args.map(&:inspect_colorized).join(','.colorize(:enumerator_arg_separator))
      res += $10.colorize(:enumerator     ) #   (\))
    end
    res += $11.colorize(:object_delimiter ) # (>)
  end
end
