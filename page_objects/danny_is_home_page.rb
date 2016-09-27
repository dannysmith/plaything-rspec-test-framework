class DannyIsHomePage
  include TFPageObject

  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.goto "http://danny.is/writing"
    return self
  end

  def assert_background_is_white
    expect(@browser.body.style('background-color')).to eq "rgba(255, 255, 255, 1)"
  end
end
