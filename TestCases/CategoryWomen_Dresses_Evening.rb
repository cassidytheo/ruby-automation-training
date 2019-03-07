require "selenium-webdriver"
require "test/unit"

class CategoryWomen_Dresses_Evening < Test::Unit::TestCase
  
  #Setup Selenium WebDriver using Firefox
  def setup
    @driver = Selenium::WebDriver.for :firefox
    @driver.get('http://automationpractice.com')
    @driver.manage.window.maximize  
  end
  
  def test_women_dresses_evening
  @driver.find_element(:link, 'Women').click
  
  #check for availability of "You will find here all woman fashion collections" text.
  @driver.find_element(:xpath, "/html/body/div/div[2]/div/div[3]/div[2]/div[1]/div/div/div/p[1]/strong").size() != 0
  puts "Open Women Tab successful!"
  puts "Continuing to open Dresses subcategory"
  
  #click on  Tops subcategory (specifically the image)
  @driver.find_element(:xpath, "//img[@src='http://automationpractice.com/img/c/8-medium_default.jpg']").click
  @driver.find_element(:class, 'content_scene_cat_bg').size() != 0
  puts "Open Dresses subcategory successful"
  puts "Continuing to open Evening subcategory"
  
  #click on  Evening subcategory (specifically the image)
  @driver.find_element(:xpath, "//img[@src='http://automationpractice.com/img/c/10-medium_default.jpg']").click
  @driver.find_element(:class, 'content_scene_cat_bg').size() != 0
  puts "Open Evening subcategory successful"
  end
  
  def teardown
  @driver.quit()
  end
end
