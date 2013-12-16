module Contactable
  module Config
    include ActiveSupport::Configurable
    
    # Email recipient
    config_accessor :recipient
    
    # Reset all configurations to defaults.
    def self.reset
      file = File.exist?('config/contactable.yml') ? 'config/contactable.yml' : "#{Engine.root}/lib/generators/templates/contactable.yml"
      config = YAML.load_file(file)[Rails.env].deep_symbolize_keys!

      config.each do |key, value|
        send("#{key}=", value)
      end

      raise 'Error: Recipient is not set' unless recipient
    end

    # Set default values for configuration options on load
    self.reset
  end
end