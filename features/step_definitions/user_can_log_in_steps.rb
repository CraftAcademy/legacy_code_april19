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

When("I fill in the {string} with {string}") do |field, user_data|
    fill_in field, with: user_data
end

When("I click {string} button") do |login|
    click_button login
end
