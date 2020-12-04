require 'selenium-webdriver'
require 'webdrivers'
driver = Selenium::WebDriver.for :chrome
begin
    # Navigate to URL
    driver.get 'https://itmscoaching.herokuapp.com/form'
    #Maximize or set size of browser window
    driver.manage.window.maximize
    sleep 5
    #Enter the form with following data
    driver.find_element(:id, 'first-name').click
    driver.find_element(:id, 'first-name').send_keys('iTMS')
    sleep 3
    driver.find_element(:id, 'last-name').click
    driver.find_element(:id, 'last-name').send_keys('Coaching')
    sleep 3
    driver.find_element(:id, 'job-title').click
    driver.find_element(:id, 'job-title').send_keys('QA')
    sleep 3
    #radioBtn = driver.find_element(By.id("College"))
    #radioBtn.click()
    driver.find_element(:id, 'radio-button-2').click
    driver.find_element(:id, 'radio-button-2').send_keys('College')
    sleep 3
    driver.find_element(:id, 'checkbox-1').click
    driver.find_element(:id, 'checkbox-1').send_keys('Male')
    sleep 3
    driver.find_element(:id, 'select-menu').click
    driver.find_element(:id, 'select-menu').send_keys('2-4')
    sleep 3
    driver.find_element(:id, 'datepicker').click
    driver.find_element(:id, 'datepicker').send_keys('27/10/2025')
    sleep 5
    Submit = driver.find_element(xpath:'//a[contains(text(),"Submit")]')
    Submit.click
    sleep 5
ensure
        driver.quit
end