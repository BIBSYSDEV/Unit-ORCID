# encoding: utf-8

Feature: A user associates and ORCID ID with a person authority record

  Scenario: A user logs into a research-oriented system and is prompted to associate their account with a new ORCID
    Given that the user has valid login credentials for the research system
    And that the user does not have an existing ORCID ID
    When they log into the research system
    And they approve association with a new ORCID ID
    And they fill in the details required by ORCID
    Then they receive a success message
    And when they visit their user profile they see the new ORCID association link
