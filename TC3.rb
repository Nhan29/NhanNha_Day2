require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
begin
    # Navigate to URL
    driver.get 'https://google.com'
    # Maximize or set size of browser window
    driver.manage.window.maximize
    sleep 4
    # Get Title of page and print it
    # Cach1: puts "Page title is #{driver.title}"
    # Cach2: puts driver.title
    # Cach3:
    print (driver.title)
    # Cach4:
    #title = driver.title
    #puts title
    sleep 5
ensure
    driver.quit
end