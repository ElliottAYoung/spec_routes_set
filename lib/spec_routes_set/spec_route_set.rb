class SpecRouteSet
  attr_reader :routes

  def initialize(&block)
    @routes = block
    append_routes
  end

  private

  def append_routes
    RouteAppender.add(@routes)
  end
end
