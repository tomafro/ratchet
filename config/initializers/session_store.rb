# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ratchet_session',
  :secret      => 'e51ae7d8805d20550808bdaaebd4857c022ad1dde7f9fef2da92c1291369a9233bfbd1d8ffb31460f89d1a74b46e19d4e77e3760d98d6952bb3bfee10a214355'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
