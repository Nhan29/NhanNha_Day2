require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
begin
    # Navigate to URL
    driver.get 'https://google.com'
    #Maximize or set size of browser window
    driver.manage.window.maximize
    sleep 5
    #Get URL of current page and print it
    
    puts driver.current_url
ensure
        driver.quit
end