module RouteAppender
  def self.add(routes)
    accessor = RouteAccessor.new
    accessor.eval_block(routes)
  end
end
