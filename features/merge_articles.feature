Feature: Write Articles
  As a blog administrator
  In order to organize my amazing thoughts
  I want to be able to merge articles

  Background:
    Given the blog is set up
    And there is a "Gummy Bears Are da Bomb" article with the body "gummy bears are teh squish"

  Scenario: Visit the edit content page as an admin
    Given I am logged into the admin panel
    And I am on the admin content edit page
    Then I should see "Merge Articles"
    And I should see "Article ID"
    And the "article_id" field should be empty

  Scenario: Visit the edit content page as a blog publisher
    Given I am logged into the admin panel as a blog publisher
    And I am on the admin content edit page
    Then I should not see "Merge Articles"
    And I should not see "Article ID"
