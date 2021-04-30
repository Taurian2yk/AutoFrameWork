Feature: Menu test
  As
  On choosing a menu option, I should get re-directed to appropriate product page

  Scenario Outline: validate menu re-direction

    Given I'm on Home Page "http://www.next.co.uk"
    When I choose a menu option "<menu>"
    Then I should be on the appropriate products page with title as "<pageHeader>"

    Examples:
      | menu  | pageHeader       |
      | MEN   | The Men's Shop   |
      | BOYS  | The Boys' Shop   |
      | WOMEN | The Women's Shop |
      | HOME  | The Home Shop    |
      | GIRLS | The Girls' Shop  |