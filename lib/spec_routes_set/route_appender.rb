module RouteAppender
  def self.add(routes)
    Rails.application.routes.send('eval_block', routes)
  end
end
