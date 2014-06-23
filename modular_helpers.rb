require 'sinatra/base'
require 'date'

module MyHelpers
  def time
    Time.now.to_s
  end
end

class MyApplication < Sinatra::Base
  helpers myApplication

  helpers do
    def date
      Date.today.to_s
    end
  end

  get('/') { "it's #{time}\n"}
  get('/today') { "today is #{date}\n"}

  run!
end
