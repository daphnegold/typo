Feature: Write Articles
  As a blog administrator
  In order to organize my amazing thoughts
  I want to be able to categorize articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And there is a "Gummy Bears" category with the keywords "gummy bears squish"

  Scenario: Visit the category page
    Given I am on the admin content page
    When I follow "Categories"
    Then I should be on the admin categories page
    And I should see "Categories"
    And I should see "Name"
    And the "category_name" field should be empty
    And I should see "Keywords"
    And the "category_keywords" field should be empty
    And I should see "Permalink"
    And the "category_permalink" field should be empty
    And I should see "Your category slug. Leave empty if you don't know what to put here"
    And I should see "Description"
    And the "category_description" field should be empty

  Scenario: Save a new category
    Given I am on the admin categories page
    When I fill in the following:
      | Name           | Poodles    |
      | Keywords       | dogs       |
      | Permalink      |            |
      | Description    |            |
    And I press "Save"
    Then I should be on the admin categories page
    And I should see "Category was successfully saved."
    And I should not see "Category could not be saved."

  Scenario: Edit a category
    Given I am on the admin categories page
    When I follow "Edit"
    Then I should be on the admin categories edit page
    And the "category_name" field should contain "Gummy Bears"
    And the "category_keywords" field should contain "gummy bears squish"
    And the "category_permalink" field should contain "gummy-bears"
    And the "category_description" field should be empty
