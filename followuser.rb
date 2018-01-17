require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = "-"
  config.access_token_secret = ""
end

p client

client.follow("PascaleKremer","AlexJaquin","LauraIsaaz","cath_robin","Del_Gautherin","Isaduriez","lucietuile","AugeyBastien","mcastagnet","AminaKalache","mvaudano","CParrot","ombelinetips")
