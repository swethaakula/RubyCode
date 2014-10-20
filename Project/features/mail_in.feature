Feature: Mail.in
  Scenario: Mail Login
    Given the user opens Internet Explorer
      And User navigates to "http://mail.in.com"
    When User clicks on Register Now button
     And User enters Name as "Swetha"
     And User selects day as "10"
     And User selects month as "Feb"
     And User selects year as "2000"
     And User enters username as "Swetha34722"
     And User enters password as "cucumber"
     And User enters Confirm password as "cucumber"
     And User enters E-mail as "swetha1111@gmail.com"
     And User clicks on continue button
     And User selects Female radiobutton
     And User selects country as "India"
     And User selects City as "Hyderabad"
     And User selects Occupation as "Others"
     And User checks the checkbox I agree to the Terms and conditions
  Then User clicks Create Account button
