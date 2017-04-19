class RouteSet
  def initialize(&block)
    RouteAppender.add(block)
  end
end
