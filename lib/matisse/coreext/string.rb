require 'colorize'

class String
  alias :old_colorize :colorize

  def colorize color
    if ::Matisse::COLORS.include? color
      return old_colorize ::Matisse::COLORS[color]
    end
    
    return old_colorize color
  end
end
