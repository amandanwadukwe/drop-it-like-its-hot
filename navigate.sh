#!/bin/bash

# Use Python to open the URL and perform the click action with Selenium
python - <<EOF
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service as ChromeService
from webdriver_manager.chrome import ChromeDriverManager
import time

# Set up the web driver (using webdriver_manager to handle the driver installation)
driver = webdriver.Chrome(service=ChromeService(ChromeDriverManager().install()))

try:
    # Navigate to the URL
    driver.get("https://rhino-orb-syx2.squarespace.com/config/pages")

    # Wait for the page to load completely (adjust the sleep time if necessary)
    time.sleep(5)

    # Find the list element with the class "css-1kywwwk"
    list_element = driver.find_element(By.CLASS_NAME, "css-1kywwwk")

    # Find the button element with the class "Lf0nNGojlVMq98lEHPO6 css-mwbzsw" inside the list element
    button_element = list_element.find_element(By.CLASS_NAME, "Lf0nNGojlVMq98lEHPO6.css-mwbzsw")

    # Click the button
    button_element.click()

    # Wait for the click action to be processed (adjust the sleep time if necessary)
    time.sleep(2)

finally:
    # Close the browser
    driver.quit()
EOF
