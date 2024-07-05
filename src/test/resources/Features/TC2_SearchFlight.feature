@Search
Feature: Search Flight Module

  @Search1
  Scenario Outline: Verifying Search flight with all fields in One Way Trip
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srini"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search

    Examples:
      | userName            | password        | flyingFrom | flingTo   | departDate | adults | children | infants |
      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 1      | 1        | 1       |


  @Search2
  Scenario Outline: Verifying Search flight with mandatory fields in One Way Trip
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srini"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>" and "<adults>"
    Then User should verify that flights are displayed after search

    Examples:
      | userName            | password        | flyingFrom | flingTo   | departDate | adults |
      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 1      |

  @Search3
  Scenario Outline: Verifying Search flight with all fields in Round Trip
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srini"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<returnDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are displayed after search

    Examples:
      | userName            | password        | flyingFrom | flingTo   | departDate | returnDate | adults | children | infants |
      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 29-06-2024 | 1      | 1        | 1       |

  @Search4
  Scenario Outline: Verifying Search flight with mandatory fields in Round Trip
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srini"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<returnDate>" and "<adults>"
    Then User should verify that flights are displayed after search

    Examples:
      | userName            | password        | flyingFrom | flingTo   | departDate | returnDate | adults |
      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | 29-06-2024 | 1      |

  @Search5
  Scenario Outline: Verifying Search flight with all fields in Multi Trip
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srini"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<dropCity>", "<Second-departDate>", "<adults>", "<children>" and "<infants>"
    Then User should verify that flights are not displayed after search

    Examples:
      | userName            | password        | flyingFrom | flingTo   | departDate | dropCity   | Second-departDate | adults | children | infants |
      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | Coimbatore | 28-06-2024        | 1      | 1        | 1       |

  @Search6
  Scenario Outline: Verifying Search flight with mandatory fields in Multi Trip
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srini"
    When  User enter "<flyingFrom>", "<flingTo>", "<departDate>", "<dropCity>", "<Second-departDate>" and "<adults>" in Multi Trip
    Then User should verify that flights are not displayed after search

    Examples:
      | userName            | password        | flyingFrom | flingTo   | departDate | dropCity   | Second-departDate | adults |
      | srinipmps@gmail.com | abEuKW6S@asg3Nv | Chennai    | Bengaluru | 27-06-2024 | Coimbatore | 28-06-2024        | 1      |

  @Search7
  Scenario Outline: Search flight without entering any fields
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srini"
    When User click search without entering any fields
    Then User should verify that search flights error message "Please Enter the City" and "Please Enter the City"

    Examples:
      | userName            | password        |
      | srinipmps@gmail.com | abEuKW6S@asg3Nv |