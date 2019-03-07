require "selenium-webdriver"
require "test/unit"

class CategoryWomen_Tops_Tshirts < Test::Unit::TestCase
  
  #Setup Selenium WebDriver using Firefox
  def setup
    @driver = Selenium::WebDriver.for :firefox
    @driver.get('http://automationpractice.com')
    @driver.manage.window.maximize  
  end
  
  def test_women_tops_tshirts
    @driver.find_element(:link, 'Women').click
    
    #check for availability of "You will find here all woman fashion collections" text.
    @driver.find_element(:xpath, "/html/body/div/div[2]/div/div[3]/div[2]/div[1]/div/div/div/p[1]/strong").size() != 0
    puts "Open Women Tab successful!"
    puts "Continuing to open Tops subcategory"
    
    #click on  Tops subcategory (specifically the image)
    @driver.find_element(:xpath, "//img[@src='http://automationpractice.com/img/c/4-medium_default.jpg']").click
    @driver.find_element(:class, 'content_scene_cat').size() != 0
    puts "Open Tops subcategory successful"
    puts "Continuing to open T-Shirts subcategory"
    
    #click on T-Shirts subcategory
    @driver.find_element(:xpath, "//img[@src='http://automationpractice.com/img/c/5-medium_default.jpg']").click
    @driver.find_element(:class, 'content_scene_cat_bg').size() != 0
    puts "Open T-Shirts subcategory successful"
  end
  
  def teardown
    @driver.quit()
  end
end