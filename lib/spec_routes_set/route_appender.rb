module RouteAppender
  def self.add(routes)
    RouteAccessor.eval_block(routes)
  end
end
