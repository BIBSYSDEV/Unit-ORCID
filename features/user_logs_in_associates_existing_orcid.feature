Feature: A user associates and ORCID ID with a person authority record

  Scenario: A user logs into a research-oriented system and is prompted to associate their account with an existing ORCID
    Given that the user has valid login credentials for the research system
    And that the user has an existing ORCID ID
    When they log into the research system
    And they are prompted to associate an existing ORCID with their account
    And they agree to the terms of service
    Then they receive a success message
    And when they visit their user profile they see the new ORCID association link
