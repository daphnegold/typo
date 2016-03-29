Feature: Write Articles
  As a blog administrator
  In order to organize my amazing thoughts
  I want to be able to merge articles

  Background:
    Given the blog is set up
    And there is a "Gummy Bears Are da Bomb" article with the body "Gummy bears are teh squish."
    And there is a "Giant Gummies" article with the body "I dream of gummy bears."

  Scenario: Visit the edit content page as an admin
    Given I am logged into the admin panel
    And I am on the admin content edit page
    Then I should see "Merge Articles"
    And the "merge" field should be empty
