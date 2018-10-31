Jekyll::Hooks.register :pages, :post_render do |post|
  post.output = post.output.gsub('&lt;', '<')
  post.output = post.output.gsub('&gt;', '>')
end
