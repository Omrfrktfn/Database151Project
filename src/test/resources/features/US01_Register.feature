@Register
Feature: Registration Feature

  Scenario Outline:Register
    Given go to the "https://managementonschools.com"
    Given click on register
    When Enter name "<name>", surname "<surname>",birth_place "<birth_place>", phone_number "<phone_number>",gender "<gender>", birth_day "<birth_day>",ssn "<ssn>",username "<username>",password"<password>"
    Then click on register button
    Then close browser

    Examples:
      | username        | birth_day  | birth_place | gender | name | phone_number | ssn         | surname | password |
      | johndoe151tech1 | 01-08-2023 | New York    | Male   | John | 774 776 8774 | 494-66-7696 | Doe     | John.123 |

  @Database
  Scenario Outline: Validate registered user on database
      #kayıtlı kullanıcıyı database'de doğrula
    Given connect to database
    When get guest user via username "<username>"
    Then validate body contains birthday "<birthday>", birthplace "<birthplace>", gender "<gender>", name "<name>", phoneNumber "<phoneNumber>", ssn "<ssn>", surname "<surname>", username "<username>"
    Examples:
      | username        | birthday   | birthplace | gender | name | phoneNumber  | ssn         | surname |
      | johndoe151tech1 | 2023-08-01 | New York   | 0      | John | 774 776 8774 | 494-66-7696 | Doe     |







