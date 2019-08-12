require 'slack-ruby-client'

def hello(event:, context:)
  Slack.configure do |config|
    config.token = ENV['SLACK_API_TOKEN']
  end
  client = Slack::Web::Client.new
  client.chat_command(channel: ENV['SLACK_CHANNEL'], command:'/jobcan_touch')
end
