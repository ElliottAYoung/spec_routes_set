class RouteSetError < TypeError
  def initialize(msg="Unable to access Rails RouteSet")
    super
  end
end
