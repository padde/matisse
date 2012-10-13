require 'matisse/version'
require 'matisse/colors'
require 'matisse/coreext/string'

colorizers_path = File.expand_path('../matisse/colorizers/*.rb', __FILE__)
Dir[colorizers_path].each{|file| require file }

module Matisse
  def self.enable
    ::IRB::Irb.class_eval do
      alias :old_output_value :output_value

      def output_value
        printf @context.return_format, @context.last_value.inspect_colorized
      end
    end
  end

  def self.disable
    ::IRB::Irb.class_eval do
      alias :output_value :old_output_value
    end
  end
end
