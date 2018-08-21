# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :livereload
activate :i18n
set :markdown_engine, :redcarpet

# Layouts
# https://middlemanapp.com/basics/layouts/
# Allow pretty urls without file extensions
activate :directory_indexes

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

helpers do
  def svg_tag(name, options = {})
    root = Middleman::Application.root
    file_path = "#{root}/source/images/#{name}.svg"
    content_tag :div, options do
      if File.exists?(file_path)
        File.read(file_path)
      else
        '(not found)'
      end
    end
  end
end

configure :build do
  activate :minify_css
  activate :minify_javascript
end
