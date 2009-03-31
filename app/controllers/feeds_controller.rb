require 'net/http'

class FeedsController < ApplicationController
  def show
    @feed = Feed.from_param(params[:id])
    Net::HTTP.start(@feed.host) {|http|
      req = Net::HTTP::Get.new(@feed.path)
      req.basic_auth @feed.username, @feed.password
      response = http.request(req)
      render :text => response.body
    }
  end
end