class RouteSetError < TypeError
  def initialize(msg="Unable to access Rails RouteSet. SpecRoutesSet is only compatible with Rails.")
    super
  end
end
