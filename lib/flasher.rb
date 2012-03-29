module Flasher
	module Translate
	  def flash_t(key)
	    t("flash.#{params[:controller].gsub('/', '.')}#{key}")
	  end
	end
end

require 'flasher/rails_engine' if defined?(::Rails::Engine)