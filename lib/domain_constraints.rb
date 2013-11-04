class ApplicationDomain
  def matches?(request)
    APPLICATION_DOMAINS.include?(request.host)
  end
end

class WebsiteDomain
  def matches?(request)
    WEBSITE_DOMAINS.include?(request.host)
  end
end
