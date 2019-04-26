  Given("the following user exists") do |table|
    table.hashes.each do |user|
      FactoryBot.create(:user, user)
    end    
  end
  
  When("I visit the landing page") do
    visit root_path
  end
  
  Then("I click on the {string} link") do |login_link|
    click_link login_link
  end
  
  Then("I fill in the {string} field with {string}") do |field, user_data|
    fill_in field, with: user_data
  end

  Then("I click {string} button") do |login|
    click_button login
  end

  Given(/^I am logged in as "([^"]*)"$/) do |name|
    user = User.find_by(name: name)
    login_as(user, scope: :user)
  end
