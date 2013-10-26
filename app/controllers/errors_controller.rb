class ErrorsController < ActionController::Base
  layout false

  def render_error
    @exception   = env['action_dispatch.exception']
    @status_code = ActionDispatch::ExceptionWrapper.new(env, @exception).status_code
    render json: { message: @exception.to_s }, status: @status_code
  end
end
