# Be sure to restart your server when you modify this file.

# Ensure session middleware is loaded with proper configuration
Rails.application.config.middleware.use ActionDispatch::Session::CookieStore,
  key: "_fintech_backend_session",
  same_site: :none,
  secure: Rails.env.production?,
  httponly: true

# Also set the session store config
Rails.application.config.session_store :cookie_store,
  key: "_fintech_backend_session",
  same_site: :none,
  secure: Rails.env.production?,
  httponly: true

# SWAGGER TESTING (Use these ONLY if you need to test sessions from online Swagger Editor)
# Rails.application.config.session_store :cookie_store, 
#   key: '_fintech_backend_session',
#   same_site: :none,
#   secure: true
