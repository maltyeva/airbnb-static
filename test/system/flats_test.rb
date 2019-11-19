require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the home page" do
    visit '/'

    assert_selector "h1", text: "Flats"
  end


  test "check all flats are displaying" do
    visit '/'

    assert_selector '.flat', count: 6
  end
end
