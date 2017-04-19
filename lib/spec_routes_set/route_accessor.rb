require_relative 'errors/route_set_error'

class RouteAccessor
  def eval_block(routes)
    rails_route_object.send('eval_block', routes)
  end

  private

  def rails_route_object
    Rails.application.routes || raise RouteSetError
  end
end
