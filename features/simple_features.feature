# encoding: utf-8

Scenario: A user logs into a research-oriented system and the system knows their ORCID ID
  Given that the user has valid login credentials for the research system
  And that the user has an existing ORCID ID
  And that the user has approved ORCID linking
  When they log in to the research system
  Then their user account is associated with their ORCID ID

Scenario: A user logs into a research-oriented system and is prompted to associate their account with a new ORCID
  Given that the user has valid login credentials for the research system
  And that the user does not have an existing ORCID ID
  When they log into the research system
  And they approve association with a new ORCID ID
  And they fill in the details required by ORCID
  Then they receive a success message
  And when they visit their user profile they see the new ORCID association link
