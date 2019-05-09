# encoding: utf-8

Feature: A user associates and ORCID ID with a research-oriented system account

  Scenario: A user logs into a research-oriented system and is prompted to associate their account with a new ORCID
    Given that the user has valid login credentials for the research system
    And that the user does not have an existing ORCID ID
    When they log into the research system
    And they approve association with a new ORCID ID
    And they fill in the details required by ORCID
    Then they receive a success message
    And when they visit their user profile they see the new ORCID association link

  Scenario: A user logs into a research-oriented system and is prompted to associate their account with an existing ORCID
    Given that the user has valid login credentials for the research system
    And that the user has an existing ORCID ID
    When they log into the research system
    And they are prompted to associate an existing ORCID with their account
    And they agree to the terms of service
    Then they receive a success message
    And when they visit their user profile they see the new ORCID association link
