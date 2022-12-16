require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module BlogAppRuby
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    config.session_store :cookie_store, key: '_interslice_session'
    # config.eager_load_paths << Rails.root.join("extras")

    config.middleware.use Rack::Cors do
     allow do
        origins '*'

        resource '*',
      headers: :any,
      expose: ['jwt', 'access-token', 'expiry', 'token-type', 'uid', 'client'],
      methods: [:get, :post, :options, :delete, :put]
    end
    end
  end
end
