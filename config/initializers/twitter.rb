if ENV['TWITTER_CONSUMER_KEY'].nil?
  Rails.logger.warn("Set TWITTER_CONSUMER_KEY in your environment")
end
  
if ENV['TWITTER_CONSUMER_SECRET'].nil?
  Rails.logger.warn("Set TWITTER_CONSUMER_SECRET in your environment")
end
