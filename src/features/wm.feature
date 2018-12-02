Feature:
    Basic E2E Tests for Weathermap 

Scenario: Navigate weathermap and verify contents
    Given I open the url "https://openweathermap.org/"
    Then I expect that the title is "Сurrent weather and forecast - OpenWeatherMap"
    Then I expect that element "input[placeholder='Your city name']" is visible
    Then I expect that element "//button[contains(text(),'Search')]" is visible
    Then I expect that element "//h2[contains(text(),'Current weather and forecasts in your city')]" is visible

Scenario: Navigate weathermap and search invalid city
    Given I open the url "https://openweathermap.org/"
    When I set "abc" to the inputfield "input[placeholder='Your city name']"
    And I press "Enter"
    Then I expect that element "//div[@class='alert alert-warning']" contains the text "Not found"

Scenario: Navigate weathermap and search valid city
    Given I open the url "https://openweathermap.org/"
    When I set "Bristol" to the inputfield "input[placeholder='Your city name']"
    And I press "Enter"
    Then I expect that element "//div[@id='forecast_list_ul']//tr" does appear exactly "5" times

Scenario: Navigate weathermap and verify unit metrics
    Given I open the url "https://openweathermap.org/"
    When I click on the element "#imperial"
    And I wait on element ".weather-widget__temperature" to be visible
    Then I expect that element ".weather-widget__temperature" contains the text "°F"
    

   