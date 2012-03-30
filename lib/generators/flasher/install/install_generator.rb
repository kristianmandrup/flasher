module Flasher
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      def generate_flash_dir
        empty_directory 'config/locales/flash'
        say "Create folders for controllers here and then your flash locale files in them."
      end

      def source_path
        source_paths.first
      end
    end
  end
end
