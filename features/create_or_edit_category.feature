Feature: Write Articles
  As a blog administrator
  In order to organize my amazing thoughts
  I want to be able to categorize articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Visit the new category page
    Given I am on the admin content page
    When I follow "Categories"
    Then I should be on the admin categories page
    And I should see "Categories"
    And I should see "Name"
    And I should see "Keywords"
    And I should see "Permalink"
    And I should see "Description"
    And I should see "Your category slug. Leave empty if you don't know what to put here"
    And I should see "Title"
