@Login
Feature: Login Flight Module

  @Login1
  Scenario Outline: Verifying login with valid credentials without Enter
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify success message after login "Welcome Srini"

    Examples:
      | userName            | password        |
      | srinipmps@gmail.com | abEuKW6S@asg3Nv |

  @Login2
  Scenario Outline: Verifying login with valid credentials with Enter
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>" with enter key
    Then User should verify success message after login "Welcome Srini"

    Examples:
      | userName            | password        |
      | srinipmps@gmail.com | abEuKW6S@asg3Nv |

  @Login3
  Scenario Outline: Verifying login with invalid credentials
    Given User is on the OMR Branch hotel page
    When User enter "<userName>" and "<password>"
    Then User should verify error message after login "Invalid Login details or Your Password might have expired."

    Examples:
      | userName            | password     |
      | srinipmps@gmail.com | asdfghjkjhgf |