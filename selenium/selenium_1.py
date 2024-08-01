from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.service import Service

# Create an instance of ChromeOptions
chrome_options = webdriver.ChromeOptions()

# You can add options here if needed, e.g., run headless
# chrome_options.add_argument("--headless")

# Create a Chrome service object
service = Service(ChromeDriverManager().install())

# Instantiate the WebDriver
driver = webdriver.Chrome(service=service, options=chrome_options)

# Open a website
driver.get("https://www.google.com")

# Print the title of the website
print(driver.title)

# Close the browser
driver.quit()




