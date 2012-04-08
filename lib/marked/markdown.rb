require "cgi"

module Markdown
  class HTMLForTwitterBootstrap < Redcarpet::Render::HTML
    def block_code(code, language)
      "<pre class='prettyprint linenums'>#{CGI::escapeHTML(code)}</pre>"
    end
  end

  def self.render(text)
    return if text.nil?
    options  = [:hard_wrap => true, :filter_html => true, :no_intra_emphasis => true, :fenced_code_blocks => true, :no_links => true]
    markdown = Redcarpet::Markdown.new(HTMLForTwitterBootstrap, *options)
    markdown.render(text).html_safe
  end
end
