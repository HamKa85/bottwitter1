require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = "-"
  config.access_token_secret = ""
end

p client

journalos = ["@AnthoKerlizou", "@benchizer", "@Kyodex2", "@ThibautGrx"]
journalos.each do |nom|

client.update("Salut #{nom} ! Je suis eleve à The Hacking Projet, une formation gratuite au code et je viens de faire un bot Twitter!")

end
