require 'watir'
require File.dirname(__FILE__) + '/tf_page_object.rb'
Dir[File.dirname(__FILE__) + '/page_objects/*.rb'].each {|file| require file }

class App
  attr_reader :browser

  @@browser = Watir::Browser.new :chrome

  def self.method_missing(method_name, *arguments, &block)
    @@pages ||= {}
    class_name = method_name.to_s.split('_').collect(&:capitalize).join
    @@pages[method_name] || @@pages[method_name] = Object.const_get(class_name).new(@@browser)
  end

  def self.close!
    @@browser.quit
  end

  private_class_method :new
end
