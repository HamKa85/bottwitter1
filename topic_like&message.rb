require 'twitter'

client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = "-"
  config.access_token_secret = ""
end

i=0

topics = ["bootcamp THP bot codingbootcamp"]
client.filter(track: topics.join(",")) do |object|
  i+=1
  puts "#{object.user.screen_name}: #{object.text}" if object.is_a?(Twitter::Tweet)
  if i>0
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ""
      config.consumer_secret     = ""
      config.access_token        = "-"
      config.access_token_secret = ""
    end
    client.favorite(object)
    client.update("@#{object.user.screen_name}"+" Envie d'apprendre le code, viens chez THP!")
end
end
