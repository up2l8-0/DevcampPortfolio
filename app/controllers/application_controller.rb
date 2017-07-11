class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   include DeviseWhitelist
   include SetSource
   include CurrentUserConcern
   include DefaultPageContent
   
   before_action :set_copyright
   
   def set_copyright
      @copyright = WardViewTool::Renderer.copright 'Mark Ward', 'All rights reserved'
   end
end

module WardViewTool
   class Renderer
      def self.copright name, msg
         "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
      end
   end
end