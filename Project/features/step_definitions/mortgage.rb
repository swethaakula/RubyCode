module Mortgage
  def inputTOTextBox(elementByName,inputValue)
    @browser.text_field(:name,elementByName).set(inputValue)
  end
end

