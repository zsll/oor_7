# Sitemaps 0.9 XML format: http://www.sitemaps.org/protocol.php
xml.instruct!
xml.urlset :xmlns => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  xml.url do
    xml.loc root_url
    xml.lastmod @articles.first.updated_at.iso8601
    xml.changefreq 'weekly'
    xml.priority '0.8'
  end
  xml.url do
    xml.loc request.protocol + request.host_with_port + about_path
    xml.lastmod @articles.first.updated_at.iso8601
    xml.changefreq 'monthly'
  end
  @articles.each do |a|
    xml.url do
      xml.loc request.protocol + request.host_with_port + article_path(a)
      xml.lastmod a.updated_at.iso8601
      xml.changefreq "weekly"
    end
  end
end