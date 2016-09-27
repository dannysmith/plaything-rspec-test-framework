module TFPageObject
  include RSpec::Matchers

  def initialize(browser)
    @browser = browser
  end

  def url; @browser.url; end
  def title; @browser.title; end
  def reload; @browser.reload; end

  def press_enter
    @browser.send_keys "\n"
    return self
  end
end
