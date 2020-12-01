require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
begin
    # Navigate to URL
    driver.get 'http://google.com'
    sleep 3
ensure
   driver.quit 
end