Given("the following user exists") do  |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end

end 

When("I visit the landing page") do
    visit root_path
end

And("I click {string} link") do |string|
    click_link string 
  end

When("I fill in the {string} with {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("I click {string} button") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I should see {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end