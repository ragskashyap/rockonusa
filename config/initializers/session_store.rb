# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rockonusa_session',
  :secret      => '2d82b5c7732d233de754881ec8b73e6d88422934a426ef172754d35f2d5fa2be802b55b09a977a62781437bfed7039b339da40ce128028f3a125bbd277a8faf7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
