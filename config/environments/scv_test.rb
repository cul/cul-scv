Scv::Application.configure do
# Settings specified here will take precedence over those in config/environment.rb

# The production environment is meant for finished, "live" apps.
# Code is not reloaded between requests
config.cache_classes = true

# Full error reports are disabled and caching is turned on
#config.consider_all_requests_local = false
config.action_controller.perform_caching             = true
# config.action_view.cache_template_loading            = true

# This line tells passenger we are serving under http://<server>/<app_name>/
# config.action_controller.relative_url_root = "/scv_test"

config.eager_load = true

# This line tells passenger we are serving under http://<server>/<app_name>/
# config.action_controller.relative_url_root = "/scv_dev"

# See everything in the log (default is :info)
# config.log_level = :debug

# Use a different logger for distributed setups
# config.logger = SyslogLogger.new

# Use a different cache store in production
# config.cache_store = :mem_cache_store

# Enable serving of images, stylesheets, and javascripts from an asset server
# config.action_controller.asset_host = "http://assets.example.com"

# Disable delivery errors, bad email addresses will be ignored
# config.action_mailer.raise_delivery_errors = false

# Enable threaded mode
# config.threadsafe!

config.action_mailer.delivery_method = :sendmail
config.action_mailer.smtp_settings = {
  :location => "/usr/bin/sendmail",
  :arguments => '-i -t'
}
config.action_mailer.default_url_options = { :host => 'berlioz.cul.columbia.edu' }
config.active_support.deprecation = :notify
# Use default logging formatter so that PID and timestamp are not suppressed.
config.log_formatter = ::Logger::Formatter.new
Haml::Template::options[:ugly] = true
end
