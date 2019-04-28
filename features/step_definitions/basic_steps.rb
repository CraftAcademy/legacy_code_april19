
  Given("I visit the landing page") do
    visit root_path
  end

  Given("I click {string} link") do |string|
    click_link string
  end

  When("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content
  end

  Given("the following user exists") do |table|
    table.hashes.each do |user|
      FactoryBot.create(:user, user)
    end    
  end
  
  Then("I fill in the {string} field with {string}") do |field, user_data|
    fill_in field, with: user_data
  end

  Then("I click {string} button") do |login|
    click_button login
  end
