require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
begin
    # Navigate to URL
    driver.get 'https://google.com'
    #Maximize or set size of browser window
    driver.manage.window.maximize
    sleep 5
    #Search with 'iTMS Coaching' word
    search_bar = driver.find_element(css: '[name="q"]')
    search_bar.send_keys 'iTMS Coaching'
    search_bar.send_keys (:enter)
    #WebElement linkClick = driver.find_Element(By.id('https://itmscoaching.com/'))
    #linkClick.click()
    sleep 5 
    #Get page title and print it
    print (driver.title)
    sleep 5
ensure
        driver.quit
end