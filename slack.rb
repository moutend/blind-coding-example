require './api'
module Slack
  class Team
    attr_accessor :channel, :user
    def initialize
      @client = API::Client.new 'https://slack.com/api'
      @channel = {}
      @user = {}
      @client.request('/channels.list')['channels'].each do |ch|
        @channel[ch['name']] = ch['id']
      end
      @client.request('/users.list')['members'].each do |u|
        @user[u['id']] = u['name']
      end
    end
    def channels_history(opt)
      @client.request('/channels.history', opt)['messages']
    end
  end
end
