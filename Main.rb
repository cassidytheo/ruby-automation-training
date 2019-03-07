require "selenium-webdriver"
require "test/unit"
require "./TestCases/CategoryWomen_Dresses_Casual"
require "./TestCases/CategoryWomen_Dresses_Evening.rb"
require "./TestCases/CategoryWomen_Tops_Blouses.rb"
require "./TestCases/CategoryWomen_Dresses_Summer.rb"
require "./TestCases/CategoryWomen_Tops_TShirts.rb"

class Main
  
  def initialize
    @category1=CategoryWomen_Dresses_Casual(:test_women_dresses_casual)
    @category2=CategoryWomen_Dresses_Evening(:test_women_dresses_evening)
    @category3=CategoryWomen_Dresses_Summer(:test_women_dresses_summer)
    @category4=CategoryWomen_Tops_Blouses(:test_women_tops_blouses)
    @category5=test_women_tops_tshirts(:test_women_tops_tshirts)
  end
end