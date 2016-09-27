require 'watir'
require File.dirname(__FILE__) + '/tf_page_object.rb'
Dir[File.dirname(__FILE__) + '/page_objects/*.rb'].each {|file| require file }

class App
  attr_reader :browser, :google_home

  @@browser = Watir::Browser.new :chrome

  def self.method_missing(method_name, *arguments, &block)
    class_name = method_name.to_s.split('_').collect(&:capitalize).join
    Object.const_get(class_name).new @@browser
  end

  def self.close!
    @@browser.quit
  end

  def initialize
    raise Exception, "You cannot instantiate an App object"
  end
end
