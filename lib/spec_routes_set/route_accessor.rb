require_relative 'errors/route_set_error'

class RouteAccessor
  def eval_block(routes)
    rails_route_object.send('eval_block', routes)
  end

  private

  def rails_route_object
    if rails?
      Rails.application.routes || ActionDispatch::Routing::RouteSet.new
    else
      raise RouteSetError
    end
  end

  def rails?
    begin
      Rails
      return true
    rescue NameError
      return false
    end
  end
end
