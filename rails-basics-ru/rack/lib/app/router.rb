# frozen_string_literal: true

require 'rack'

class Router
  def call(env)
    # BEGIN
    # puts 'middleware_before'
    # # env содержит запрос
    # status, headers, body = @app1.call(env)
    # puts 'middleware_after'
    request = Rack::Request.env(env)
    if request.path == '/'
      case request.request_method
      when 'GET'
        [status, headers, body]
      when 'POST'
        [201, headers.merge({'x-created' => 'True'}), ['Item was successfully created']]
      end
    elsif request.path == '/about'
      case request.request_method
      when 'GET'
        [status, headers, body]
      when 'POST'
        [201, headers.merge({'x-created' => 'True'}), ['Item was successfully created']]
      end
    else
      [404, {}, ["Not Found"]]
    end
    # END
  end
end