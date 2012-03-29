module Flasher
  class Engine < ::Rails::Engine
      
  	initializer "setup for rails" do
  		ActionController::Base.send(:include, Flasher::Translate)
    end

  end
end
