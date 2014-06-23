require "heroku_lifx/version"
require "lifx"
require "open-uri"
require "json"

module HerokuLifx
  def self.run
    client = LIFX::Client.lan
    client.discover!

    loop do
      status_hash = JSON.parse(open("https://status.heroku.com/api/v3/current-status").read)
      color = status_hash["status"]["Development"]

      lifx_color = LIFX::Color.send(color)
      client.lights.set_color(lifx_color)
      sleep 5
    end

  end
end
