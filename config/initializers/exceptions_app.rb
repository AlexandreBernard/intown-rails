Rails.application.config.consider_all_requests_local = false
Rails.application.config.exceptions_app = lambda { |env| ErrorsController.action(:render_error).call(env) }
