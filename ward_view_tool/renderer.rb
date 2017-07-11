module WardViewTool
   class Renderer
      def self.copright name, msg
         "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
      end
   end
end