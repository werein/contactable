module Contactable
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Copy default configuration"
      def copy_configuration
        template "contactable.yml", "config/contactable.yml"
      end
    end
  end
end