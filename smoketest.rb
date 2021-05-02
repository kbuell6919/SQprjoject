require 'watir'
require 'selenium-webdriver'


browser = Selenium::WebDriver.for :firefox
browser.manage.window.maximize

browser.manage.timeouts.implicit_wait = 10
browser.get 'https://www.shellysquiltingattic.com/'

browser.find_element(:id, "DrpDwnMn06label").click

browser.find_element(:name, "name").send_keys "Kevin"
browser.find_element(:name, "email").send_keys "kbuell6919@gmail.com"

# return to home page
browser.find_element(:id, "DrpDwnMn00label").click

# go to quilting supply page on etsy.
browser.find_element(:id, "DrpDwnMn04label").click
#browser.find_element(:scr, "https://i.etsystatic.com/25724487/d/il/9c330a/2675038635/il_340x270.2675038635_qy42.jpg?version=0").click

def close
  use do
    @browser.close
  end
end
#browser.close

#browser = Selenium::WebDriver.for :firefox
#browser.manage.window.maximize

#browser.manage.timeouts.implicit_wait = 10
#browser.get 'https://www.shellysquiltingattic.com/'




browser.close