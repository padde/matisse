class Object
  # Enumerator uses this method to colorize
  # Enumerator::Generator (and other objects?)
  def self.colorize_str str
    if str =~ /^(#<)(.+)(:)(0x[0-9a-f]+)(>)$/
      res  = $1.colorize(:object_delimiter) # (#<)
      classes = $2.split('::')              # (*+)
      classes.map!{|x| x.colorize(:class) }
      res += classes.join('::'.colorize(:class_delimiter))
      res += $3.colorize(:object_separator) # (:)
      res += $4.colorize(:object_address  ) # (0x[0-9a-f]+)
      res += $5.colorize(:object_delimiter) # (>)
      return res
    end

    str
  end

  def inspect_colorized
    self.class.colorize_str self.inspect
  end
end
