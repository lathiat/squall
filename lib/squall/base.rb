module Squall
  class Base
    attr_reader :params
    include HTTParty

    def initialize
      self.class.base_uri Squall::config[:base_uri]
      self.class.basic_auth Squall::config[:username], Squall::config[:password]
      self.class.format :json
      self.class.headers 'Content-Type' => 'application/json'
      # debug_output
    end

    def params
      @params ||= Params.new
    end
  end
end