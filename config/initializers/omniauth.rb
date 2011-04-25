require 'openid/store/filesystem' 
Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  provider :twitter, 'gIgfkQ8KS0RoO6SnME4nw', 'NSUfKx6xrK17vETRsXDpD9n0H1sArOGwkgBKUX3aQ'
  provider :facebook, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  provider :openid, OpenID::Store::Filesystem.new('/tmp') 
#  use OmniAuth::Strategies::OpenID, OpenID::Store::Filesystem.new('/tmp'), :name => 'yahoo', :identifier => 'yahoo.com' 
  use OmniAuth::Strategies::OpenID, OpenID::Store::Filesystem.new('/tmp'), :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
end
