class GoogleHomePage
  include TFPageObject

  def visit
    @browser.goto "http://google.com"
    return self
  end

  def fill_in_with(string)
    @browser.text_field(id: "lst-ib").set(string)
    return self
  end
end
