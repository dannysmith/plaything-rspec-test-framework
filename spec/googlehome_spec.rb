describe "some test" do
  it "should search on google" do
    App.google_home_page.visit.fill_in_with("Hello").press_enter
  end

  it "should have a white background on danny.is" do
    App.danny_is_home_page
       .visit
       .assert_background_is_white
  end
end
