@Select
Feature: Search Flight Module

  @Select1
  Scenario Outline: Verifying sorting functionality of price low to high
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srini"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User click price low to high button
    Then User should verify that flights are listed in low to high prices

    Examples:
      | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants |
      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       |

  @Select2
  Scenario Outline: Verifying sorting functionality of price high to low
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srini"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User click price high to low button
    Then User should verify that flights are listed in high to low prices

    Examples:
      | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants |
      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       |

  #Manual Testing
#  @Select3
#  Scenario Outline: Verifying sorting functionality of Name Ascending
#    Given User is on the OMR Branch hotel page
#    When User enter "<userName>" and "<password>"
#    Then User should verify success message after login "Welcome Srini"
#    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
#    Then User should verify that flights are displayed after search
#    When User click price high to low button
#    Then User should verify that flights are listed in ascending order
#
#    Examples:
#      | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants |
#      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       |
#
#  @Select4
#  Scenario Outline: Verifying sorting functionality of Name Descending
#    Given User is on the OMR Branch hotel page
#    When User enter "<userName>" and "<password>"
#    Then User should verify success message after login "Welcome Srini"
#    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
#    Then User should verify that flights are displayed after search
#    When User click price high to low button
#    Then User should verify that flights are listed in descending order
#
#    Examples:
#      | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants |
#      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       |
#
#  @Select5
#  Scenario Outline: Verifying filtering functionality of Name AirIndia
#    Given User is on the OMR Branch hotel page
#    When User enter "<userName>" and "<password>"
#    Then User should verify success message after login "Welcome Srini"
#    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
#    Then User should verify that flights are displayed after search
#    When User click AirIndia button
#    Then User should verify that AirIndia flights are listed
#
#    Examples:
#      | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants |
#      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       |
#
#  @Select6
#  Scenario Outline: Verifying filtering functionality of Name Akasa Air
#    Given User is on the OMR Branch hotel page
#    When User enter "<userName>" and "<password>"
#    Then User should verify success message after login "Welcome Srini"
#    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
#    Then User should verify that flights are displayed after search
#    When User click Akasa Air button
#    Then User should verify that Akasa Air flights are listed
#
#    Examples:
#      | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants |
#      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       |
#
#  @Select7
#  Scenario Outline: Verifying filtering functionality of Name Go First
#    Given User is on the OMR Branch hotel page
#    When User enter "<userName>" and "<password>"
#    Then User should verify success message after login "Welcome Srini"
#    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
#    Then User should verify that flights are displayed after search
#    When User click Go First button
#    Then User should verify that Go First flights are listed
#
#    Examples:
#      | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants |
#      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       |
#
#  @Select8
#  Scenario Outline: Verifying filtering functionality of Name Indigo
#    Given User is on the OMR Branch hotel page
#    When User enter "<userName>" and "<password>"
#    Then User should verify success message after login "Welcome Srini"
#    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
#    Then User should verify that flights are displayed after search
#    When User click Indigo button
#    Then User should verify that Indigo flights are listed
#
#    Examples:
#      | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants |
#      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       |
#
#  @Select9
#  Scenario Outline: Verifying filtering functionality of Name SpiceJet
#    Given User is on the OMR Branch hotel page
#    When User enter "<userName>" and "<password>"
#    Then User should verify success message after login "Welcome Srini"
#    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
#    Then User should verify that flights are displayed after search
#    When User click SpiceJet button
#    Then User should verify that SpiceJet flights are listed
#
#    Examples:
#      | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants |
#      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       |
#
#  @Select10
#  Scenario Outline: Verifying filtering functionality of Name Vistara
#    Given User is on the OMR Branch hotel page
#    When User enter "<userName>" and "<password>"
#    Then User should verify success message after login "Welcome Srini"
#    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
#    Then User should verify that flights are displayed after search
#    When User click Vistara button
#    Then User should verify that Vistara flights are listed

    Examples:
      | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants |
      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       |

  @Select11
  Scenario Outline: Selecting first flight for One way trip
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srini"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save first flight name and price
    And User select the first flight and accept the alert
    Then User should verify select success message

    Examples:
      | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants |
      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       |

  @Select12
  Scenario Outline: Selecting last flight for One way trip
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srini"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    When User save last flight name and price
    And User select the last flight and accept the alert
    Then User should verify select success message

    Examples:
      | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants |
      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       |

  @Search13
  Scenario Outline: Selecting last flight for Round Trip
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srini"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<returnDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    And User select the first flight for round trip and accept the alert
    Then User should verify select success message

    Examples:
      | userName            | password        | flyingFrom | flingTo   | departDate | returnDate | adults | children | infants |
      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 29-06-2024 | 1      | 1        | 1       |

  @Search14
  Scenario Outline: Selecting last flight for Round Trip
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srini"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<returnDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search
    And User select the last flight for round trip and accept the alert
    Then User should verify select success message

    Examples:
      | userName            | password        | flyingFrom | flingTo   | departDate | returnDate | adults | children | infants |
      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 29-06-2024 | 1      | 1        | 1       |