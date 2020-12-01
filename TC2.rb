require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
begin
    # Navigate to URL
    driver.get 'https://google.com'
    #Maximize or set size of browser window
    driver.manage().window().maximize();
    sleep 5
ensure
    driver.quit
end