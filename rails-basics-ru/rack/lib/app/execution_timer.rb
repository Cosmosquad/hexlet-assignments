# frozen_string_literal: true

class ExecutionTimer
  def initialize(app)
    @app = app
  end

  def call(env)
    # BEGIN
    from = Time.new
    status, header, body = @app.call env
    message = "Execute time is : #{Time.new - from}"

    [status, header, (body << message).join(' ')]
    # END
  end
end
