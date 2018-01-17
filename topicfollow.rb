require 'twitter'
while true
    begin

      rClient = Twitter::REST::Client.new do |config|
      sClient = Twitter::Streaming::Client.new do
        config = {
            consumer_key:        "",
            consumer_secret:     "",
            access_token:        "-",
            access_token_secret: ""
        }


        topics = ['#rails', '#ruby', '#coding', '#codepen']
        sClient.filter(:track => topics.join(',')) do |tweet|
            if tweet.is_a?(Twitter::Tweet)
              puts tweet.text
              rClient.fav tweet
            end
        end
    rescue
        puts 'error occurred, waiting for 5 seconds'
        sleep 5
    end

end
