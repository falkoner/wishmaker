# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wishmaker_session',
  :secret      => '5fb65a7a567d6adbb60056197626c045bb52c4456eb70a5fdfb1972d2b3a6b72e5f3e0ecc94c093471313a43513cbf04feb01259e7e7755c7a9f064fefe746e6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
