module Flasher
  module Generators
    class LocalesGenerator < ::Rails::Generators::Name
      attr_accessor :locale

      class_option :locales, :type => :array, :default => ['en'], :desc => "Locales to generate"

      def generate_locales
        locales.each do |locale|
          @locale = locale
          template "locale.erb" , "app/config/flash/#{name}/#{locale}.yml"
        end
      end

      def source_path
        source_paths.first
      end

      protected

      def locales
        options[:locales] || ['en']
      end
    end
  end
end
